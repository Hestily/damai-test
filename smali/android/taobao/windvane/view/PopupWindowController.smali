.class public Landroid/taobao/windvane/view/PopupWindowController;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private cancelIndex:I

.field private isHideByBackButton:Z

.field isShow:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mView:Landroid/view/View;

.field private popupLayout:Landroid/widget/LinearLayout;

.field private popupViewGroup:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->isShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->isHideByBackButton:Z

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->cancelIndex:I

    .line 6
    iput-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController;->mView:Landroid/view/View;

    .line 8
    invoke-direct {p0, p3, p4, p5}, Landroid/taobao/windvane/view/PopupWindowController;->initButtons(Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-direct {p0}, Landroid/taobao/windvane/view/PopupWindowController;->initPopupWindow()V

    .line 10
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 p2, 0xfa

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/taobao/windvane/view/PopupWindowController;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/view/PopupWindowController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/taobao/windvane/view/PopupWindowController;->isHideByBackButton:Z

    return p0
.end method

.method static synthetic access$002(Landroid/taobao/windvane/view/PopupWindowController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/view/PopupWindowController;->isHideByBackButton:Z

    return p1
.end method

.method static synthetic access$100(Landroid/taobao/windvane/view/PopupWindowController;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/taobao/windvane/view/PopupWindowController;->cancelIndex:I

    return p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/view/PopupWindowController;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private fixPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOnScrollChangedListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 7
    new-instance v3, Landroid/taobao/windvane/view/PopupWindowController$3;

    invoke-direct {v3, p0, v0, p1, v1}, Landroid/taobao/windvane/view/PopupWindowController$3;-><init>(Landroid/taobao/windvane/view/PopupWindowController;Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 8
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initButtons(Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupViewGroup:Landroid/widget/FrameLayout;

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    .line 6
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    iget-object v3, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    const v6, -0xa0a0b

    if-nez v4, :cond_0

    .line 11
    new-instance v4, Landroid/widget/Button;

    iget-object v7, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 14
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 15
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    new-instance p1, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setHeight(I)V

    .line 19
    iget-object v4, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 20
    array-length p1, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    aget-object v7, p2, v4

    .line 21
    new-instance v8, Landroid/widget/Button;

    iget-object v9, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v7, -0x1000000

    .line 25
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 26
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v8, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v7, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x2

    .line 30
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 31
    iget-object v8, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Landroid/widget/Button;

    iget-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p2, "\u53d6\u6d88"

    goto :goto_1

    :cond_2
    const-string p2, "Cancel"

    .line 34
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 36
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 37
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    iget-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupViewGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p2, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupViewGroup:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/taobao/windvane/view/PopupWindowController$2;

    invoke-direct {p3, p0, p1}, Landroid/taobao/windvane/view/PopupWindowController$2;-><init>(Landroid/taobao/windvane/view/PopupWindowController;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x7f000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, v0}, Landroid/taobao/windvane/view/PopupWindowController;->fixPopupWindow(Landroid/widget/PopupWindow;)V

    .line 9
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/taobao/windvane/view/PopupWindowController$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/view/PopupWindowController$1;-><init>(Landroid/taobao/windvane/view/PopupWindowController;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->isShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->isHideByBackButton:Z

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->isShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->isShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/taobao/windvane/view/PopupWindowController;->mView:Landroid/view/View;

    const/16 v3, 0x51

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->popupLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/taobao/windvane/view/PopupWindowController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/view/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
