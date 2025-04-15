.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->a:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Landroidx/activity/b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/b;->a:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Landroidx/activity/b;->b:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->b(Lkotlinx/coroutines/channels/ProducerScope;Landroid/view/View;)V

    return-void
.end method
