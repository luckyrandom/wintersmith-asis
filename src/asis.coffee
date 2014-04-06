module.exports = (env, callback) ->
    constructor: (@filepath) ->

    class AsisFile extends env.plugins.StaticFile
      ### Static file handler, simply serves content as-is. Register
      to suffix asis. ###

      getUrl: (base) ->
        url = super base
        url.replace /\.asis$/, ''
        url.replace /(\/)_asis_\.(?=[^\/]*$)/, '/'

      getPluginColor: ->
        'blue'

      @fromFile = (filepath, callback) ->
        callback null, new AsisFile(filepath)

    env.registerContentPlugin 'asis', '**/*.asis', AsisFile
    env.registerContentPlugin 'asis', '**/_asis_.*', AsisFile
    callback()
