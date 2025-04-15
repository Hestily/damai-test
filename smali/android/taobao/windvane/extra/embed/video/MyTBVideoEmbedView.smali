.class public Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;
.super Landroid/taobao/windvane/embed/BaseEmbedView;
.source "Taobao"

# interfaces
.implements Lcom/taobao/avplayer/IDWVideoLifecycleListener;
.implements Lcom/taobao/avplayer/IDWVideoLoopCompleteListener;
.implements Lcom/taobao/avplayer/common/IDWMutedChangeListener;
.implements Lcom/taobao/avplayer/common/IDWRootViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;,
        Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;
    }
.end annotation


# static fields
.field private static ERROR:Ljava/lang/String; = "error"

.field private static FINISH:Ljava/lang/String; = "finish"

.field private static final FULL_SCREEN_MODE:Ljava/lang/String; = "fullScreen"

.field private static LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static METADATA:Ljava/lang/String; = "meta"

.field private static MUTEDCHANGE:Ljava/lang/String; = "mutedChange"

.field public static final NAME:Ljava/lang/String; = "wvvideo"

.field private static final NORMAL_SCREEN_MODE:Ljava/lang/String; = "inlineScreen"

.field private static PAUSED:Ljava/lang/String; = "paused"

.field private static PLAYING:Ljava/lang/String; = "playing"

.field private static PREPARED:Ljava/lang/String; = "prepared"

.field private static SCREENMODECHANGE:Ljava/lang/String; = "screenModeChange"

.field private static final SMALL_SCREEN_MODE:Ljava/lang/String; = "smallScreen"

.field private static final VALUE_FALSE:Ljava/lang/String; = "false"

.field private static final VALUE_LONG:J = -0x1L

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"

.field private static VIDEOEND:Ljava/lang/String; = "end"


# instance fields
.field private isCompleted:Z

.field private mAspectRatio:Lcom/taobao/avplayer/DWAspectRatio;

.field private mAutoPlay:Z

.field private mBackCoverDisPlay:Z

.field private mComponentHostView:Landroid/widget/FrameLayout;

.field private mContentId:Ljava/lang/String;

.field private mContentMode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControlsViewHidden:Z

.field private mCurrentTime:I

.field private mDWInstanceType:Lcom/taobao/avplayer/DWInstanceType;

.field private mFrom:Ljava/lang/String;

.field private mGestureViewHidden:Z

.field private mHasDisappear:Z

.field private mHasPlay:Z

.field private mHeight:I

.field private mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

.field private mInit:Z

.field private mInteractiveId:J

.field private mIsVideoLoop:Z

.field private mLandscape:Z

.field private mLoadingHidden:Z

.field private mMiniProgressViewHidden:Z

.field private mMuted:Z

.field private mNeedAD:Z

.field private mNeedFirstPlayUT:Z

.field private mNetworkErrorViewHidden:Z

.field private mPlayControl:Ljava/lang/String;

.field private mPlayErrorViewHidden:Z

.field private mPlayerScene:Ljava/lang/String;

.field private mPlayingIconHidden:Z

.field private mPosterScaleType:Landroid/widget/ImageView$ScaleType;

.field private mPreload:Ljava/lang/String;

.field private mResume:Z

.field private mScreenMode:Ljava/lang/String;

.field private mShowInteractive:Z

.field private mShownMuteBtn:Z

.field private mSrc:Ljava/lang/String;

.field private mStarted:Z

.field private mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

.field private mThumbnailSrc:Ljava/lang/String;

.field private mToastViewHidden:Z

.field private mUserId:J

.field private mVideoDuration:I

.field private mVideoId:Ljava/lang/String;

.field private mVideoSource:Ljava/lang/String;

.field private mWidth:I

.field private utParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    .line 3
    iput v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mSrc:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayerScene:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mThumbnailSrc:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mShowInteractive:Z

    .line 8
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentId:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMuted:Z

    .line 10
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoSource:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoId:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mFrom:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPreload:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayControl:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentMode:Ljava/lang/String;

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNeedFirstPlayUT:Z

    .line 17
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mDWInstanceType:Lcom/taobao/avplayer/DWInstanceType;

    .line 18
    iput v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mCurrentTime:I

    .line 19
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    .line 20
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mResume:Z

    .line 21
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    .line 22
    iput v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoDuration:I

    .line 23
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mLandscape:Z

    .line 24
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    .line 25
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNeedAD:Z

    .line 26
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->isCompleted:Z

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    return p0
.end method

.method static synthetic access$002(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    return p1
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    return p0
.end method

.method static synthetic access$1000(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mute(Z)V

    return-void
.end method

.method static synthetic access$102(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    return p1
.end method

.method static synthetic access$1100(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mScreenMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->play()V

    return-void
.end method

.method static synthetic access$200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBDWInstance;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    return-object p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBHighPerformanceDWInstance;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    return-object p0
.end method

.method static synthetic access$400(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoDuration:I

    return p0
.end method

.method static synthetic access$900(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->isMute()Z

    move-result p0

    return p0
.end method

.method private destroyInner()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->adIsPlaying()Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->toggleScreen()V

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 9
    iget-object v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v2}, Lcom/taobao/avplayer/TBDWInstance;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 10
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance;->setVideoLifecycleListener(Lcom/taobao/avplayer/IDWVideoLifecycleListener;)V

    .line 11
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->destroy()V

    .line 12
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz v0, :cond_6

    .line 14
    iget-object v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 16
    :cond_5
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setVideoLifecycleListener(Lcom/taobao/avplayer/IDWVideoLifecycleListener;)V

    .line 17
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->destroy()V

    .line 18
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    :cond_6
    :goto_1
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v1, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->id:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Landroid/taobao/windvane/extra/embed/video/EmbedViewEvent;->firevent(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private genVideoView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayerScene:Ljava/lang/String;

    const-string v1, "highPerformance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->initHighInstance()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->initNormalInstance()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mInit:Z

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;

    iget-object v3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;-><init>(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 8
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 9
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAutoPlay:Z

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->start()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v1}, Lcom/taobao/avplayer/TBDWInstance;->start()V

    .line 14
    :goto_1
    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->PLAYING:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    new-instance v1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$2;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$2;-><init>(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getCurrentPosition()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initHighInstance()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;-><init>(Landroid/app/Activity;)V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setBizCode(Ljava/lang/String;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setContentId(Ljava/lang/String;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 4
    iget-wide v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setUserId(J)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setVideoUrl(Ljava/lang/String;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 6
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMuted:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setMute(Z)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 7
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->utParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setUTParams(Ljava/util/HashMap;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 8
    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setWidth(I)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setVideoId(Ljava/lang/String;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setVideoSource(Ljava/lang/String;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 11
    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setHeight(I)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 12
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mIsVideoLoop:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setVideoLoop(Z)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAspectRatio:Lcom/taobao/avplayer/DWAspectRatio;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setVideoAspectRatio(Lcom/taobao/avplayer/DWAspectRatio;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 15
    :cond_0
    sget-object v1, Lcom/taobao/avplayer/DWInstanceType;->PIC:Lcom/taobao/avplayer/DWInstanceType;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->setDWInstanceType(Lcom/taobao/avplayer/DWInstanceType;)Lcom/taobao/avplayer/DWHighPerformaceInstance$Builder;

    .line 16
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance$TBBuilder;->create()Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    .line 17
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mThumbnailSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;)V

    .line 19
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPosterScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mThumbnailSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->asyncSetImageUrl(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v1, v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setPicImageView(Landroid/widget/ImageView;)V

    .line 23
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0, p0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setVideoLifecycleListener(Lcom/taobao/avplayer/IDWVideoLifecycleListener;)V

    .line 24
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mIsVideoLoop:Z

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0, p0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setIVideoLoopCompleteListener(Lcom/taobao/avplayer/IDWVideoLoopCompleteListener;)V

    .line 26
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0, p0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setRootViewClickListener(Lcom/taobao/avplayer/common/IDWRootViewClickListener;)V

    .line 27
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0, p0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setIDWMutedChangeListener(Lcom/taobao/avplayer/common/IDWMutedChangeListener;)V

    .line 28
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAutoPlay:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mResume:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 29
    :cond_4
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->METADATA:Ljava/lang/String;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPreload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    sget-object v1, Lcom/taobao/avplayer/DWInstanceType;->VIDEO:Lcom/taobao/avplayer/DWInstanceType;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setInstanceType(Lcom/taobao/avplayer/DWInstanceType;)V

    .line 31
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->asyncPrepareVideo()V

    goto :goto_1

    .line 32
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    sget-object v1, Lcom/taobao/avplayer/DWInstanceType;->VIDEO:Lcom/taobao/avplayer/DWInstanceType;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setInstanceType(Lcom/taobao/avplayer/DWInstanceType;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNeedFirstPlayUT:Z

    .line 35
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->start()V

    .line 36
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private initNormalInstance()Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;-><init>(Landroid/app/Activity;)V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setVideoUrl(Ljava/lang/String;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayerScene:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayerScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setScene(Ljava/lang/String;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mDWInstanceType:Lcom/taobao/avplayer/DWInstanceType;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setDWInstanceType(Lcom/taobao/avplayer/DWInstanceType;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 7
    :cond_1
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mIsVideoLoop:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setVideoLoop(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 8
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMuted:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setMute(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 9
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setContentId(Ljava/lang/String;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 11
    :cond_2
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mBackCoverDisPlay:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setNeedBackCover(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 12
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setVideoSource(Ljava/lang/String;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 13
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setVideoId(Ljava/lang/String;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 14
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setBizCode(Ljava/lang/String;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 15
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->utParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setUTParams(Ljava/util/HashMap;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 16
    iget-wide v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mUserId:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 17
    iget-wide v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mInteractiveId:J

    invoke-virtual {v0, v1, v2}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setInteractiveId(J)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 18
    :cond_3
    iget-wide v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mUserId:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setUserId(J)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 20
    :cond_4
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mThumbnailSrc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setNeedFrontCover(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 22
    new-instance v1, Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCover;

    invoke-direct {v1}, Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCover;-><init>()V

    .line 23
    new-instance v2, Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCoverBean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mThumbnailSrc:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCoverBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPosterScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCoverBean;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCover;->setFrontCoverView(Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCoverBean;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setFrontCoverData(Lcom/taobao/avplayer/interactivelifecycle/frontcover/model/DWFrontCover;)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 27
    :cond_5
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMiniProgressViewHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setMiniProgressAnchorShown(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 28
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNetworkErrorViewHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->hiddenNetworkErrorView(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 29
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mToastViewHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->hiddenToastView(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 30
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayingIconHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->hiddenPlayingIcon(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 31
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mGestureViewHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->hiddenGestureView(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 32
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mLoadingHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->hiddenLoading(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 33
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayErrorViewHidden:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->hiddenPlayErrorView(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 34
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mShownMuteBtn:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setMuteDisplay(Z)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 35
    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setWidth(I)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 36
    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->setHeight(I)Lcom/taobao/avplayer/DWInstance$Builder;

    .line 37
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance$TBBuilder;->create()Lcom/taobao/avplayer/TBDWInstance;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 38
    invoke-virtual {v0, p0}, Lcom/taobao/avplayer/TBDWInstance;->setVideoLifecycleListener(Lcom/taobao/avplayer/IDWVideoLifecycleListener;)V

    .line 39
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0, p0}, Lcom/taobao/avplayer/TBDWInstance;->setIDWMutedChangeListener(Lcom/taobao/avplayer/common/IDWMutedChangeListener;)V

    .line 40
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->hideCloseView()V

    .line 41
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->hideController()V

    .line 42
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->isMute()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private mute(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMuted:Z

    .line 2
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mInit:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasDisappear:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/taobao/avplayer/TBDWInstance;->mute(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->mute(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseParam()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->setWidth(IZ)V

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->setHeight(IZ)V

    .line 3
    invoke-static {}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->values()[Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;

    move-result-object v0

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 5
    iget-object v5, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v5, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/Object;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private play()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 3
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 4
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 5
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->playVideo()V

    goto :goto_2

    .line 7
    :cond_1
    :goto_0
    iput-boolean v4, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->start()V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz v0, :cond_5

    .line 10
    sget-object v5, Lcom/taobao/avplayer/DWInstanceType;->VIDEO:Lcom/taobao/avplayer/DWInstanceType;

    invoke-virtual {v0, v5}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setInstanceType(Lcom/taobao/avplayer/DWInstanceType;)V

    .line 11
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getVideoState()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    .line 12
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getVideoState()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    .line 13
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getVideoState()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    .line 14
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->getVideoState()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->playVideo()V

    goto :goto_2

    .line 16
    :cond_4
    :goto_1
    iput-boolean v4, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNeedFirstPlayUT:Z

    .line 18
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->start()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;->valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;->doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/taobao/windvane/embed/BaseEmbedView;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1

    return p1
.end method

.method protected generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->parseParam()V

    .line 5
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->genVideoView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getViewType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wvvideo"

    return-object v0
.end method

.method public hook()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dyy"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttachedToWebView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->onAttachedToWebView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->onDestroy()V

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->destroyInner()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mInit:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDetachedFromWebView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->onDetachedFromWebView()V

    return-void
.end method

.method public onLoopCompletion()V
    .locals 0

    return-void
.end method

.method public onMutedChange(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->MUTEDCHANGE:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onParamChanged([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/embed/BaseEmbedView;->onParamChanged([Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    .line 4
    aget-object p2, p2, v0

    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, p0, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/Object;Z)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onResume()V

    return-void
.end method

.method public onVideoClose()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNeedAD:Z

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->isCompleted:Z

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/taobao/avplayer/TBDWInstance;->needAD(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    .line 6
    iput v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mCurrentTime:I

    .line 7
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->FINISH:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->VIDEOEND:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoError(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    sget-object p1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->ERROR:Ljava/lang/String;

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoFullScreen()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance;->mute(Z)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mLandscape:Z

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v1, v0}, Lcom/taobao/avplayer/TBDWInstance;->showOrHideInteractive(Z)V

    .line 5
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v1}, Lcom/taobao/avplayer/TBDWInstance;->showTopEventView()V

    .line 6
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v1}, Lcom/taobao/avplayer/TBDWInstance;->showGoodsListView()V

    .line 7
    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->SCREENMODECHANGE:Ljava/lang/String;

    const-string v2, "fullScreen"

    invoke-direct {p0, v1, v2}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "landscape"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->LANDSCAPE:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mScreenMode:Ljava/lang/String;

    return-void
.end method

.method public onVideoInfo(Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public onVideoNormalScreen()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mLandscape:Z

    .line 3
    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMuted:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance;->mute(Z)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mShowInteractive:Z

    invoke-virtual {v0, v1}, Lcom/taobao/avplayer/TBDWInstance;->showOrHideInteractive(Z)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->hideGoodsListView()V

    .line 6
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->hideTopEventView()V

    .line 7
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->SCREENMODECHANGE:Ljava/lang/String;

    const-string/jumbo v1, "smallScreen"

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "landscape"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->LANDSCAPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mScreenMode:Ljava/lang/String;

    return-void
.end method

.method public onVideoPause(Z)V
    .locals 1

    .line 1
    sget-object p1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->PAUSED:Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPlay()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->isCompleted:Z

    .line 2
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->PLAYING:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPrepared(Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->isCompleted:Z

    .line 2
    sget-object p1, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->PREPARED:Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoProgressChanged(III)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mCurrentTime:I

    .line 2
    iget p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoDuration:I

    if-nez p1, :cond_0

    .line 3
    iput p3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoDuration:I

    :cond_0
    return-void
.end method

.method public onVideoSeekTo(I)V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNeedAD:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->isCompleted:Z

    .line 4
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/taobao/avplayer/TBDWInstance;->pauseVideo()V

    return-void

    .line 6
    :cond_0
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    .line 7
    iget v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mCurrentTime:I

    if-lez v0, :cond_2

    .line 8
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Lcom/taobao/avplayer/TBDWInstance;->seekTo(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->seekTo(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/taobao/windvane/embed/BaseEmbedView;->onVisibilityChanged(I)V

    return-void
.end method

.method public setAutoPlay(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAutoPlay:Z

    return-void
.end method

.method public setBackCoverDisPlay(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mBackCoverDisPlay:Z

    return-void
.end method

.method public setContentId(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentId:Ljava/lang/String;

    return-void
.end method

.method public setContentMode(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "aspectFill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "aspectFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    sget-object p2, Lcom/taobao/avplayer/DWAspectRatio;->DW_CENTER_CROP:Lcom/taobao/avplayer/DWAspectRatio;

    iput-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAspectRatio:Lcom/taobao/avplayer/DWAspectRatio;

    .line 4
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPosterScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 5
    :pswitch_1
    sget-object p2, Lcom/taobao/avplayer/DWAspectRatio;->DW_FIT_X_Y:Lcom/taobao/avplayer/DWAspectRatio;

    iput-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAspectRatio:Lcom/taobao/avplayer/DWAspectRatio;

    .line 6
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPosterScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 7
    :pswitch_2
    sget-object p2, Lcom/taobao/avplayer/DWAspectRatio;->DW_FIT_CENTER:Lcom/taobao/avplayer/DWAspectRatio;

    iput-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mAspectRatio:Lcom/taobao/avplayer/DWAspectRatio;

    .line 8
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPosterScaleType:Landroid/widget/ImageView$ScaleType;

    .line 9
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mContentMode:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x512e7f67 -> :sswitch_2
        0x2ff583 -> :sswitch_1
        0x2b5e91fb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setControlsViewHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mControlsViewHidden:Z

    return-void
.end method

.method public setDWInstanceType(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/taobao/avplayer/DWInstanceType;->values()[Lcom/taobao/avplayer/DWInstanceType;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 4
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/taobao/avplayer/DWInstanceType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iput-object v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mDWInstanceType:Lcom/taobao/avplayer/DWInstanceType;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 8
    sget-object p2, Lcom/taobao/avplayer/DWInstanceType;->VIDEO:Lcom/taobao/avplayer/DWInstanceType;

    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mDWInstanceType:Lcom/taobao/avplayer/DWInstanceType;

    invoke-virtual {p2, v0}, Lcom/taobao/avplayer/DWInstanceType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/taobao/avplayer/DWInstanceType;->VIDEO:Lcom/taobao/avplayer/DWInstanceType;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/taobao/avplayer/DWInstanceType;->PIC:Lcom/taobao/avplayer/DWInstanceType;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setInstanceType(Lcom/taobao/avplayer/DWInstanceType;)V

    :cond_3
    return-void
.end method

.method public setFrom(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setGestureViewHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mGestureViewHidden:Z

    return-void
.end method

.method public setHeight(IZ)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz p2, :cond_0

    .line 3
    iget v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    invoke-virtual {p2, v0, p1}, Lcom/taobao/avplayer/TBDWInstance;->setFrame(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz p2, :cond_1

    .line 5
    iget v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    invoke-virtual {p2, v0, p1}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setFrame(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInteractiveHidden(ZZ)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mShowInteractive:Z

    .line 2
    iget-boolean p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mInit:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasDisappear:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/taobao/avplayer/TBDWInstance;->showOrHideInteractive(Z)V

    :cond_0
    return-void
.end method

.method public setInteractiveId(JZ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mInteractiveId:J

    return-void
.end method

.method public setIsVideoLoop(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mIsVideoLoop:Z

    return-void
.end method

.method public setLoadingHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mLoadingHidden:Z

    return-void
.end method

.method public setMiniProgressViewHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMiniProgressViewHidden:Z

    return-void
.end method

.method public setMuted(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mMuted:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/taobao/avplayer/TBDWInstance;->mute(Z)V

    :cond_0
    return-void
.end method

.method public setNetworkErrorViewHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mNetworkErrorViewHidden:Z

    return-void
.end method

.method public setPlayControl(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayControl:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHasPlay:Z

    const-string/jumbo v0, "play"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 6
    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 7
    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    .line 8
    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->getVideoState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->playVideo()V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iput-boolean p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mStarted:Z

    .line 11
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->start()V

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "pause"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->pauseVideo()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPlayErrorViewHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayErrorViewHidden:Z

    return-void
.end method

.method public setPlayerScene(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayerScene:Ljava/lang/String;

    return-void
.end method

.method public setPlayingIconHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPlayingIconHidden:Z

    return-void
.end method

.method public setPreLoad(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mPreload:Ljava/lang/String;

    return-void
.end method

.method public setScreenMode(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mScreenMode:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "inlineScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "fullScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "smallScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->toggleScreen()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->isSmallWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->toNormal()Z

    goto :goto_1

    .line 9
    :pswitch_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->isFullScreen()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->toggleScreen()V

    goto :goto_1

    .line 11
    :pswitch_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->isFullScreen()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->isSmallWindow()Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    invoke-virtual {p1}, Lcom/taobao/avplayer/TBDWInstance;->toSmall()Z

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x34a5dfad -> :sswitch_2
        -0x300b9825 -> :sswitch_1
        0x16103865 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShownMuteBtn(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mShownMuteBtn:Z

    return-void
.end method

.method public setSrc(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mSrc:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailSrc(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mThumbnailSrc:Ljava/lang/String;

    return-void
.end method

.method public setToastViewHidden(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mToastViewHidden:Z

    return-void
.end method

.method public setUserId(JZ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mUserId:J

    return-void
.end method

.method public setUtParams(Ljava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->utParams:Ljava/util/HashMap;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoSource(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mVideoSource:Ljava/lang/String;

    return-void
.end method

.method public setWidth(IZ)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mWidth:I

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mTBDWInstance:Lcom/taobao/avplayer/TBDWInstance;

    if-eqz p2, :cond_0

    .line 3
    iget v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    invoke-virtual {p2, p1, v0}, Lcom/taobao/avplayer/TBDWInstance;->setFrame(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHigDWInstance:Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    if-eqz p2, :cond_1

    .line 5
    iget v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->mHeight:I

    invoke-virtual {p2, p1, v0}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->setFrame(II)V

    :cond_1
    :goto_0
    return-void
.end method
