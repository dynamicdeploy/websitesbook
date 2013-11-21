using System.Collections.Generic;
using Newtonsoft.Json;

namespace MvcMusicStore.Models
{
    public partial class Genre
    {
        public int GenreId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        //The below attribute excludes the Albums
        //property from JSON serialization, preventing
        //circular references when serializing albums.
        [JsonIgnore]

        public List<Album> Albums { get; set; }
    }
}
