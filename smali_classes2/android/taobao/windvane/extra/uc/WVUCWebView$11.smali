.class Landroid/taobao/windvane/extra/uc/WVUCWebView$11;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->isPageEmpty(Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field final synthetic val$callback:Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;->val$callback:Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;->val$callback:Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;->isPageEmpty(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
