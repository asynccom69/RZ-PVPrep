module.exports = {
    publicPath: "./",
    outputDir: "../html",
    productionSourceMap: false,
    filenameHashing: false,

    css: {
        extract: false,
    },

    chainWebpack: (config) => {
        config.optimization.delete("splitChunks");
        // config.externals({
        //   moment: "moment",
        // });
    },


};