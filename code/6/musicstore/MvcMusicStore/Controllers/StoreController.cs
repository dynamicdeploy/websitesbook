using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcMusicStore.Models;
using Nest;
using System.Configuration;

namespace MvcMusicStore.Controllers
{
    public class StoreController : Controller
    {
        MusicStoreEntities storeDB = new MusicStoreEntities();

        private static ElasticClient ElasticClient
        {
            get
            {
                string elasticSearchUri = ConfigurationManager.AppSettings["elasticsearchUri"];
                var setting = new ConnectionSettings(new Uri(elasticSearchUri));

                string elasticsearchindexname = ConfigurationManager.AppSettings["elasticsearchindexname"];

                setting.SetDefaultIndex(elasticsearchindexname);
                return new ElasticClient(setting);
            }
        }
        //
        // GET: /Store/

        public ActionResult Index()
        {
            var genres = storeDB.Genres.ToList();

            return View(genres);
        }

        //
        // GET: /Store/Browse?genre=Disco

        public ActionResult Browse(string genre)
        {
            //// Retrieve Genre and its Associated Albums from database
            //var genreModel = storeDB.Genres.Include("Albums")
            //    .Single(g => g.Name == genre);

            //return View(genreModel);

        //    var result = ElasticClient.Search<Album>(body =>
        //body.Filter(filter =>
        //    filter.Term(x =>
        //        x.Genre.Name, genre.ToLower()))
        //.Take(1000));

            var result = ElasticClient.Search<Album>(body =>
    body.Query(query =>
        query.ConstantScore(
            csq => csq.Filter(filter =>
                filter.Term(x =>
                    x.Genre.Name, genre.ToLower()))))
    .Take(1000));

            var genreModel = new Genre()
            {
                Name = genre,
                Albums = result.Documents.ToList()
            };

            return View(genreModel);

        }

        //GET: /Store/Search
        public ActionResult Search(string q)
        {
            var result = ElasticClient.Search<Album>(body =>
         body.Query(query =>
         query.QueryString(qs => qs.Query(q))));

            var genre = new Genre()
            {
                Name = "Search results for " + q,
                Albums = result.Documents.ToList()
            };

            return View("Browse", genre);

        }

        //
        // GET: /Store/Details/5

        public ActionResult Details(int id)
        {
            var album = storeDB.Albums.Find(id);

            return View(album);
        }

        //
        // GET: /Store/GenreMenu

        [ChildActionOnly]
        public ActionResult GenreMenu()
        {
            //var genres = storeDB.Genres.ToList();

            //return PartialView(genres);

            var result = ElasticClient.Search<Album>(body =>
        body.Take(0)
        .FacetTerm(x => x.OnField(f => f.Genre.Name)));

            var genres = result
                .FacetItems<TermItem>(x => x.Genre.Name)
                .Select(x => new Genre { Name = x.Term });

            return PartialView(genres);

        }

    }
}