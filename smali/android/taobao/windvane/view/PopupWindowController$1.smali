.class Landroid/taobao/windvane/view/PopupWindowController$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/view/PopupWindowController;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/view/PopupWindowController;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/view/PopupWindowController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController$1;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController$1;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-static {v0}, Landroid/taobao/windvane/view/PopupWindowController;->access$000(Landroid/taobao/windvane/view/PopupWindowController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController$1;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-static {v0}, Landroid/taobao/windvane/view/PopupWindowController;->access$200(Landroid/taobao/windvane/view/PopupWindowController;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController$1;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-static {v1}, Landroid/taobao/windvane/view/PopupWindowController;->access$100(Landroid/taobao/windvane/view/PopupWindowController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController$1;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/taobao/windvane/view/PopupWindowController;->access$002(Landroid/taobao/windvane/view/PopupWindowController;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
