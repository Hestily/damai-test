.class public Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;
.super Landroid/taobao/windvane/extra/uc/WVUCWebView;
.source "Taobao"


# instance fields
.field private attachBottom:Landroid/taobao/windvane/webview/IAttachBottom;

.field private bottomLevel:I

.field private bottomLevelDP:I

.field private isBottom:Z

.field private isBottomLevelUp:Z

.field private screenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Landroid/taobao/windvane/util/ScreenUtil;->getScreenHeight()I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->screenHeight:I

    const/16 p1, 0x32

    .line 15
    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevelDP:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 16
    invoke-static {p1}, Landroid/taobao/windvane/util/DPUtil;->dip2px(F)I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevel:I

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    .line 18
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-static {}, Landroid/taobao/windvane/util/ScreenUtil;->getScreenHeight()I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->screenHeight:I

    const/16 p1, 0x32

    .line 9
    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevelDP:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 10
    invoke-static {p1}, Landroid/taobao/windvane/util/DPUtil;->dip2px(F)I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevel:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    .line 12
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {}, Landroid/taobao/windvane/util/ScreenUtil;->getScreenHeight()I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->screenHeight:I

    const/16 p1, 0x32

    .line 3
    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevelDP:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 4
    invoke-static {p1}, Landroid/taobao/windvane/util/DPUtil;->dip2px(F)I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevel:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    .line 6
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Z)V

    .line 20
    invoke-static {}, Landroid/taobao/windvane/util/ScreenUtil;->getScreenHeight()I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->screenHeight:I

    const/16 p1, 0x32

    .line 21
    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevelDP:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 22
    invoke-static {p1}, Landroid/taobao/windvane/util/DPUtil;->dip2px(F)I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevel:I

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    .line 24
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    return-void
.end method


# virtual methods
.method public OnScrollChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->OnScrollChanged(IIII)V

    .line 2
    iget p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->screenHeight:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getContentHeight()I

    move-result p3

    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevel:I

    sub-int/2addr p3, v0

    if-le p1, p3, :cond_2

    const/4 p1, 0x1

    if-ge p2, p4, :cond_0

    .line 3
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    .line 4
    :cond_0
    iget-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    const-string p4, "attach bottom callback"

    const-string v0, "attach bottom level"

    const-string/jumbo v1, "scroll"

    if-nez p3, :cond_1

    .line 5
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->attachBottom:Landroid/taobao/windvane/webview/IAttachBottom;

    if-eqz p1, :cond_3

    .line 8
    invoke-static {v1, p4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->attachBottom:Landroid/taobao/windvane/webview/IAttachBottom;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IAttachBottom;->onAttachBottom()V

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->screenHeight:I

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getContentHeight()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 11
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->attachBottom:Landroid/taobao/windvane/webview/IAttachBottom;

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v1, p4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->attachBottom:Landroid/taobao/windvane/webview/IAttachBottom;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IAttachBottom;->onAttachBottom()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottomLevelUp:Z

    .line 16
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->isBottom:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setAttachBottomListener(Landroid/taobao/windvane/webview/IAttachBottom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->attachBottom:Landroid/taobao/windvane/webview/IAttachBottom;

    return-void
.end method

.method public setBottomLevelDP(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVPTRUCWebView;->bottomLevelDP:I

    return-void
.end method
