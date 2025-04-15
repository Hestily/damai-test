.class public interface abstract Landroid/taobao/windvane/webview/IWVWebView;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final taskQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/taobao/windvane/webview/IWVWebView;->taskQueue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract _getContext()Landroid/content/Context;
.end method

.method public abstract _post(Ljava/lang/Runnable;)Z
.end method

.method public abstract addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract allowAllOpen()Z
.end method

.method public abstract back()Z
.end method

.method public abstract canUseGlobalUrlConfig()Z
.end method

.method public abstract canUseUrlConfig()Z
.end method

.method public abstract clearCache()V
.end method

.method public abstract evaluateJavascript(Ljava/lang/String;)V
.end method

.method public abstract evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fireEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataOnActive()Ljava/lang/String;
.end method

.method public abstract getJsObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPageLoadedCount()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUserAgentString()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hideLoadingView()V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract setAllowAllOpen(Z)V
.end method

.method public abstract setDataOnActive(Ljava/lang/String;)V
.end method

.method public abstract setGlobalUrlConfigSwitch(Z)V
.end method

.method public abstract setUrlConfigSwitch(Z)V
.end method

.method public abstract setUserAgentString(Ljava/lang/String;)V
.end method

.method public abstract showLoadingView()V
.end method
