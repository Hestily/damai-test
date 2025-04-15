.class Landroid/taobao/windvane/extra/uc/WVUCWebView$8;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
