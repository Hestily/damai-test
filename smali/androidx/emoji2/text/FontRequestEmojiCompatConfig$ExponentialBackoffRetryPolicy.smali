.class public Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;
.super Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExponentialBackoffRetryPolicy"
.end annotation


# instance fields
.field private mRetryOrigin:J

.field private final mTotalMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;-><init>()V

    .line 2
    iput-wide p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mTotalMs:J

    return-void
.end method


# virtual methods
.method public getRetryDelay()J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mRetryOrigin:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mRetryOrigin:J

    return-wide v2

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mRetryOrigin:J

    sub-long/2addr v0, v2

    .line 4
    iget-wide v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mTotalMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mTotalMs:J

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method
