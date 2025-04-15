.class Landroid/taobao/windvane/view/WebNaviBar$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/view/WebNaviBar;->setClickListener(Landroid/widget/ImageButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/view/WebNaviBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroid/taobao/windvane/view/WebNaviBar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iput p2, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->val$index:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    invoke-static {p1}, Landroid/taobao/windvane/view/WebNaviBar;->access$000(Landroid/taobao/windvane/view/WebNaviBar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    invoke-static {v0}, Landroid/taobao/windvane/view/WebNaviBar;->access$100(Landroid/taobao/windvane/view/WebNaviBar;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iget-object p1, p1, Landroid/taobao/windvane/view/WebNaviBar;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iget-object p1, p1, Landroid/taobao/windvane/view/WebNaviBar;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iget-object p1, p1, Landroid/taobao/windvane/view/WebNaviBar;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iget-object p1, p1, Landroid/taobao/windvane/view/WebNaviBar;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iget-object p1, p1, Landroid/taobao/windvane/view/WebNaviBar;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    iget-object p1, p1, Landroid/taobao/windvane/view/WebNaviBar;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/view/WebNaviBar$1;->this$0:Landroid/taobao/windvane/view/WebNaviBar;

    invoke-static {p1}, Landroid/taobao/windvane/view/WebNaviBar;->access$200(Landroid/taobao/windvane/view/WebNaviBar;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method
