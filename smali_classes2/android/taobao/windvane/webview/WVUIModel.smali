.class public Landroid/taobao/windvane/webview/WVUIModel;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIModel"


# instance fields
.field private cancelNoti:Z

.field private errorLayout:Landroid/widget/LinearLayout;

.field private errorShow:Z

.field private errorView:Landroid/view/View;

.field private isError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loadingView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private mWarningView:Landroid/widget/TextView;

.field private naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

.field private showLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->showLoading:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->cancelNoti:Z

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->isError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorShow:Z

    .line 10
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mView:Landroid/view/View;

    .line 12
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Landroid/taobao/windvane/webview/WVUIModel;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Landroid/taobao/windvane/webview/WVUIModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/taobao/windvane/webview/WVUIModel;->cancelNoti:Z

    return p0
.end method

.method static synthetic access$102(Landroid/taobao/windvane/webview/WVUIModel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->cancelNoti:Z

    return p1
.end method

.method private setNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const-string v1, "#666666"

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const-string v1, "#ffe7b3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 8
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 9
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11
    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 14
    div-int/lit8 p1, p3, 0xa

    .line 15
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 16
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    :cond_1
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setElevation(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 18
    :goto_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 19
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVUIModel;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 20
    :try_start_1
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 21
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 22
    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "context can not be application"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public disableShowLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->showLoading:Z

    return-void
.end method

.method public enableShowLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->showLoading:Z

    return-void
.end method

.method public getErrorView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/taobao/windvane/view/WebErrorView;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/view/WebErrorView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVUIModel;->setErrorView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context can not be application"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideErrorPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorShow:Z

    :cond_0
    return-void
.end method

.method public hideLoadingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideNaviBar()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isErrorShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorShow:Z

    return v0
.end method

.method public isShowLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->showLoading:Z

    return v0
.end method

.method public loadErrorPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/taobao/windvane/webview/WVUIModel;->TAG:Ljava/lang/String;

    const-string v1, "context can not be application"

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/taobao/windvane/view/WebErrorView;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/view/WebErrorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVUIModel;->setErrorView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorShow:Z

    :cond_2
    return-void
.end method

.method public resetNaviBar()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/view/AbstractNaviBar;->resetState()V

    :cond_0
    return-void
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->isError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    :goto_0
    instance-of v3, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 10
    move-object v3, p1

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    :cond_2
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorView:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 13
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 14
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    :try_start_0
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 16
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_3
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->isError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 18
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->isError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNaviBar(Landroid/taobao/windvane/view/AbstractNaviBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    :cond_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/taobao/windvane/webview/WVUIModel;->TAG:Ljava/lang/String;

    const-string v1, "context can not be application"

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/taobao/windvane/view/WebWaitingView;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/view/WebWaitingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVUIModel;->setLoadingView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/webview/WVUIModel;->setNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 3
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    neg-int p3, p3

    int-to-float p3, p3

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const-string/jumbo v4, "translationY"

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 6
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x3e8

    .line 7
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    new-array v0, v0, [F

    aput p2, v0, v2

    aput p3, v0, v3

    invoke-static {v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 13
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 14
    new-instance p1, Landroid/taobao/windvane/webview/WVUIModel$1;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/webview/WVUIModel$1;-><init>(Landroid/taobao/windvane/webview/WVUIModel;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 16
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel;->mWarningView:Landroid/widget/TextView;

    new-instance v0, Landroid/taobao/windvane/webview/WVUIModel$2;

    invoke-direct {v0, p0, p3, p2}, Landroid/taobao/windvane/webview/WVUIModel$2;-><init>(Landroid/taobao/windvane/webview/WVUIModel;Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public switchNaviBar(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel;->naviBar:Landroid/taobao/windvane/view/AbstractNaviBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/taobao/windvane/view/AbstractNaviBar;->startLoading()V

    :cond_0
    return-void
.end method
