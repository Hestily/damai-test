.class Landroid/taobao/windvane/webview/WVUIModel$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/webview/WVUIModel;->showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/webview/WVUIModel;

.field final synthetic val$animator2:Landroid/animation/ObjectAnimator;

.field final synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/WVUIModel;Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->val$set:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->val$animator2:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVUIModel;->access$100(Landroid/taobao/windvane/webview/WVUIModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->val$animator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$2;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/taobao/windvane/webview/WVUIModel;->access$102(Landroid/taobao/windvane/webview/WVUIModel;Z)Z

    :cond_0
    return-void
.end method
