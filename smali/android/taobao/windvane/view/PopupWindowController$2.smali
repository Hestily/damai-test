.class Landroid/taobao/windvane/view/PopupWindowController$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/view/PopupWindowController;->initButtons(Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/view/PopupWindowController;

.field final synthetic val$cancelButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/view/PopupWindowController;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController$2;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    iput-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController$2;->val$cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController$2;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-static {p1}, Landroid/taobao/windvane/view/PopupWindowController;->access$200(Landroid/taobao/windvane/view/PopupWindowController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ge v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController$2;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :cond_0
    return v1
.end method
