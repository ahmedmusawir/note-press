if (process.env.NODE_ENV === 'production') {
  module.exports = {
    mongoURI: 'mongodb://moose:pass123@ds111993.mlab.com:11993/note-press'
  };
} else {
  module.exports = { mongoURI: 'mongodb://mongo:27017/notepress' };
  // module.exports = {
  //   mongoURI: 'mongodb://localhost:27017/notepress'
  // };
}
