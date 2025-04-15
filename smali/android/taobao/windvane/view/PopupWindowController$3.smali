.class Landroid/taobao/windvane/view/PopupWindowController$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/view/PopupWindowController;->fixPopupWindow(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/view/PopupWindowController;

.field final synthetic val$fAnchor:Ljava/lang/reflect/Field;

.field final synthetic val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/view/PopupWindowController;Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->this$0:Landroid/taobao/windvane/view/PopupWindowController;

    iput-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->val$fAnchor:Ljava/lang/reflect/Field;

    iput-object p3, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->val$window:Landroid/widget/PopupWindow;

    iput-object p4, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->val$fAnchor:Ljava/lang/reflect/Field;

    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->val$window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController$3;->val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    return-void
.end method
