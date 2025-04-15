.class public Landroid/taobao/windvane/jsbridge/WVPluginManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;
    }
.end annotation


# static fields
.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final SEPARATOR:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "WVPluginManager"

.field private static final aliasPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

.field private static final localPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final objPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private static final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static skipMonitor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlugin(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Landroid/taobao/windvane/jsbridge/WVApiPlugin;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3
    :cond_0
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    return-object p0

    :cond_1
    const-string v1, "WVPluginManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    if-nez v0, :cond_2

    const-string/jumbo v3, "\u65e0\u5c40\u90e8API\uff0c\u5c1d\u8bd5\u4ece\u5168\u5c40API\u83b7\u53d6"

    .line 7
    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "\u4f7f\u7528\u5c40\u90e8API"

    .line 8
    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

    if-eqz v0, :cond_6

    .line 10
    invoke-interface {v0, p0}, Landroid/taobao/windvane/jsbridge/IJsBridgeService;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    .line 11
    invoke-static {p0, v0, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 12
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    return-object v2

    :cond_6
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 16
    :cond_7
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    if-eqz v0, :cond_f

    .line 17
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto/16 :goto_4

    .line 18
    :cond_8
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 19
    :cond_9
    :try_start_0
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-nez v4, :cond_a

    .line 20
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    .line 21
    :cond_a
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_d

    .line 22
    const-class v4, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 23
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    .line 24
    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->access$100(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 25
    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->access$100(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, p2, v0, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_b
    instance-of v0, p2, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_c

    .line 27
    check-cast p2, Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v3, p1, p2, v2, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_c
    invoke-virtual {v3, p1, p2, v2, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v3

    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create plugin error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_d
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create plugin failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v2

    .line 32
    :cond_f
    :goto_4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create plugin failed, plugin not register or empty, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object v2
.end method

.method public static getOriginalPlugin(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x2

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "name"

    .line 8
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    .line 9
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const-string p0, "WVPluginManager"

    const-string p1, "getOriginalPlugin failed, alias is empty."

    .line 10
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getPluginInfo(Ljava/lang/String;)Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    :goto_0
    return-object p0
.end method

.method public static getPluginInfo()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-static {v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->access$000(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WVPluginManager"

    const-string/jumbo p1, "registerAlias quit, this is no original plugin or alias is invalid."

    .line 4
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerLocalPlugin(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, p2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;ZLjava/util/Map;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6ce8\u518c\u5230\u5c40\u90e8API\uff0c\u4f7f\u7528\u8303\u56f4=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "],API=["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WVPluginManager"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;Z)V"
        }
    .end annotation

    .line 8
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-static {p0, p1, p2, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;ZLjava/util/Map;)V

    return-void
.end method

.method private static registerPlugin(Ljava/lang/String;Ljava/lang/Class;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4
    :cond_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 5
    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-boolean p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->skipMonitor:Z

    if-nez p2, :cond_1

    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, "WVPluginManager"

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 10
    :try_start_0
    instance-of v0, p1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    check-cast p1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerPlugin by Object error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WVPluginManager"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-direct {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 16
    sget-object p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 18
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, ""

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)V
    .locals 6

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-direct {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 21
    invoke-virtual {v0, p3}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->setParamObj(Ljava/lang/Object;)V

    .line 22
    sget-object p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 24
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, ""

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs registerPluginwithParam(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->setParamObj(Ljava/lang/Object;)V

    .line 5
    :cond_0
    sget-object p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, ""

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static registerWVJsBridgeService(Landroid/taobao/windvane/jsbridge/IJsBridgeService;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

    return-void
.end method

.method public static skipMnoitor(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->skipMonitor:Z

    return-void
.end method

.method public static unregisterAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p0, "WVPluginManager"

    const-string/jumbo p1, "unregisterAlias quit, alias is invalid."

    .line 3
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterLocalPlugins(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregisterPlugin(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
