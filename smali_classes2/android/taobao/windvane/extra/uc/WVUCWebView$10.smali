.class Landroid/taobao/windvane/extra/uc/WVUCWebView$10;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJsEarly(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$10;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJS(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$10;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object p1, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
