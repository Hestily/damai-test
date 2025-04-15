.class final Landroid/taobao/windvane/extra/uc/WVUCWebView$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->logConfigCreate()[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$2;->onReceiveValue([Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveValue([Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$300([Ljava/lang/Object;)V

    return-void
.end method
