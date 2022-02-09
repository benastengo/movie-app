<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      movies: [],
      params: {},
      movieInfo: {},
      id: null,
    };
  },
  created: function () {},
  methods: {
    movieIndex: function () {
      axios.get("http://localhost:3000/movies").then((response) => {
        console.log(response.data);
        this.movies = response.data;
      });
    },
    createMovie: function () {
      axios.post("http://localhost:3000/movies", this.params).then((response) => {
        console.log(response.data);
      });
    },
    showMovie: function (id) {
      axios.get(`http://localhost:3000/movies/${id}`).then((response) => {
        this.movieInfo = response.data;
        this.id = this.movieInfo.id;
      });
    },
  },
};
</script>

<template>
  <div class="home">
    <h1>Movies, bud.</h1>
    <button v-on:click="createMovie()">Create Movies</button>
    <div>
      <button v-on:click="movieIndex()">Show Movies</button>
      <p v-for="movie in movies" v-bind:key="movie.id">{{ movie.title }}</p>
      <button v-on:click="movieInfo()">Movie Info</button>
    </div>
    <p>
      Title:
      <input type="text" v-model="params.title" />
    </p>
    <p>
      Year:
      <input type="text" v-model="params.year" />
    </p>
    <p>
      Plot:
      <input type="text" v-model="params.plot" />
    </p>
    <p>
      English:
      <input type="text" v-model="params.english" />
    </p>
    <p>
      Director:
      <input type="text" v-model="params.director" />
    </p>
  </div>
</template>

<style></style>
