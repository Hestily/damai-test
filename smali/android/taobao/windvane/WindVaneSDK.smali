.class public Landroid/taobao/windvane/WindVaneSDK;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final SPNAME_ENV:Ljava/lang/String; = "wv_evn"

.field private static final VALUE_NAME:Ljava/lang/String; = "evn_value"

.field private static final WV_MULT:Ljava/lang/String; = "wv_multi_"

.field public static final synthetic a:I

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/taobao/windvane/config/WVAppParams;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, p1}, Landroid/taobao/windvane/WindVaneSDK;->init(Landroid/content/Context;Ljava/lang/String;ILandroid/taobao/windvane/config/WVAppParams;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;ILandroid/taobao/windvane/config/WVAppParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1, p3}, Landroid/taobao/windvane/WindVaneSDK;->init(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/config/WVAppParams;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/config/WVAppParams;)V
    .locals 5

    .line 3
    sget-boolean v0, Landroid/taobao/windvane/WindVaneSDK;->initialized:Z

    const-string v1, "WindVaneSDK"

    if-eqz v0, :cond_0

    const-string p0, "WindVaneSDK has already initialized"

    .line 4
    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/taobao/windvane/log/TLogImpl;

    invoke-direct {v0}, Landroid/taobao/windvane/log/TLogImpl;-><init>()V

    invoke-static {v0}, Landroid/taobao/windvane/util/TaoLog;->setImpl(Landroid/taobao/windvane/util/log/ILog;)V

    .line 6
    invoke-static {}, Landroid/taobao/windvane/log/WMLogGlobal;->getInstance()Landroid/taobao/windvane/log/WMLogGlobal;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/log/WMLogGlobal;->setContext(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/log/WMLogGlobal;->getInstance()Landroid/taobao/windvane/log/WMLogGlobal;

    move-result-object v0

    new-instance v2, Landroid/taobao/windvane/log/TLogNewImpl;

    invoke-direct {v2}, Landroid/taobao/windvane/log/TLogNewImpl;-><init>()V

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/log/WMLogGlobal;->addExternalLogHandler(Landroid/taobao/windvane/log/IWMLog;)V

    const-string v0, "WindVaneSDK init"

    .line 8
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/app/Application;

    sput-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_9

    .line 10
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v2}, Landroid/taobao/windvane/util/TaoLog;->setLogSwitcher(Z)V

    .line 12
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "caches"

    .line 13
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, p1, v3}, Landroid/taobao/windvane/cache/WVCacheManager;->init(Landroid/content/Context;Ljava/lang/String;I)V

    .line 14
    invoke-static {p0}, Landroid/taobao/windvane/WVCookieManager;->onCreate(Landroid/content/Context;)V

    .line 15
    sget-object p1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 16
    :try_start_0
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const-string/jumbo v4, "windvane/ucsdk"

    invoke-static {v0, v4}, Landroid/taobao/windvane/file/FileManager;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 18
    array-length v4, v4

    if-nez v4, :cond_5

    :cond_4
    const-string/jumbo v4, "uclibs.zip"

    .line 19
    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/taobao/windvane/file/FileManager;->unzip(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 21
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/taobao/windvane/config/WVAppParams;->ucLibDir:Ljava/lang/String;

    const-string p1, "UC init by uclibs"

    .line 22
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 23
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/config/WVAppParamsManager;->getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/config/WVAppParamsManager;->isParamsSet()Z

    move-result p1

    if-nez p1, :cond_6

    .line 24
    invoke-static {}, Landroid/taobao/windvane/config/WVAppParamsManager;->getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/config/WVAppParamsManager;->setParams(Landroid/taobao/windvane/config/WVAppParams;)V

    .line 25
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/config/GlobalConfig;->initParams(Landroid/taobao/windvane/config/WVAppParams;)Z

    .line 26
    invoke-static {}, Landroid/taobao/windvane/util/ConfigStorage;->initDirs()Z

    .line 27
    invoke-static {}, Landroid/taobao/windvane/monitor/UserTrackUtil;->init()V

    .line 28
    invoke-static {}, Landroid/taobao/windvane/WindVaneSDK;->initConfig()V

    .line 29
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVJsPreprocessor;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVJsPreprocessor;-><init>()V

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->registerJsBridgePagePreprocessors(Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;)V

    .line 30
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_7

    .line 31
    invoke-static {p0}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ":"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    array-length v0, p1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wv_multi_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    :try_start_2
    const-string/jumbo p1, "trying to init uc core"

    .line 37
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.taobao.windvane.extra.uc.WVUCWebView"

    .line 38
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    iget-boolean p1, p2, Landroid/taobao/windvane/config/WVAppParams;->needSpeed:Z

    if-nez p1, :cond_8

    .line 40
    const-class p1, Landroid/taobao/windvane/extra/uc/WVWebPushService;

    sget p2, Landroid/taobao/windvane/extra/uc/WVWebPushService;->a:I

    const-string p2, "getInstance"

    new-array v0, v2, [Ljava/lang/Class;

    .line 41
    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v3

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 43
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "failed to load WVUCWebView"

    .line 44
    invoke-static {v1, p2, p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45
    :cond_8
    :goto_2
    sput-boolean v2, Landroid/taobao/windvane/WindVaneSDK;->initialized:Z

    return-void

    .line 46
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "init error, context should be Application or its subclass"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initConfig()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->init()V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    .line 3
    invoke-static {}, Landroid/taobao/windvane/config/WVDomainConfig;->getInstance()Landroid/taobao/windvane/config/WVDomainConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVDomainConfig;->init()V

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVCommonConfig;->init()V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/WindVaneSDK$1;

    invoke-direct {v1}, Landroid/taobao/windvane/WindVaneSDK$1;-><init>()V

    const-string v2, "domain"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/config/WVConfigManager;->registerHandler(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigHandler;)V

    .line 6
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/WindVaneSDK$2;

    invoke-direct {v1}, Landroid/taobao/windvane/WindVaneSDK$2;-><init>()V

    const-string v2, "common"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/config/WVConfigManager;->registerHandler(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigHandler;)V

    .line 7
    invoke-static {}, Landroid/taobao/windvane/config/WVCookieConfig;->getInstance()Landroid/taobao/windvane/config/WVCookieConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVCookieConfig;->init()V

    .line 8
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v0

    invoke-static {}, Landroid/taobao/windvane/config/WVCookieConfig;->getInstance()Landroid/taobao/windvane/config/WVCookieConfig;

    move-result-object v1

    const-string v2, "cookie_black_list"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/config/WVConfigManager;->registerConfigImpl(Ljava/lang/String;Landroid/taobao/windvane/config/IConfig;)V

    return-void
.end method

.method public static initURLCache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/taobao/windvane/cache/WVCacheManager;->init(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/taobao/windvane/WindVaneSDK;->initialized:Z

    return v0
.end method

.method public static isTrustedUrl(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/taobao/windvane/config/WVServerConfig;->isTrustedUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static openLog(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/taobao/windvane/util/TaoLog;->setLogSwitcher(Z)V

    return-void
.end method

.method public static setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V
    .locals 7

    const-string v0, "evn_value"

    const-string/jumbo v1, "wv_evn"

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnvMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p0, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    .line 3
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/ConfigStorage;->getLongVal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/taobao/windvane/config/EnvEnum;->getKey()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/WVConfigManager;->resetConfig()V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;->getGlobalConfig()Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->reset()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/windvane/config/EnvEnum;->getKey()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v1, v0, v2, v3}, Landroid/taobao/windvane/util/ConfigStorage;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p0

    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
