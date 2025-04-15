.class public Landroid/taobao/windvane/extra/performance/WVPagePerformance;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private h5_PP_FP:J

.field private h5_PP_FSP:J

.field private h5_PP_FSP_uptime:J

.field private h5_PP_T1:J

.field private h5_PP_T1_uptime:J

.field private h5_PP_T2:J

.field private h5_PP_T2_uptime:J

.field private h5_PP_TTI:J

.field h5_PP_domComplete:J

.field h5_PP_domComplete_uptime:J

.field private h5_PP_domContentLoadedEventStart:J

.field private h5_PP_domContentLoadedEventStart_uptime:J

.field h5_PP_domLoading:J

.field h5_PP_domLoading_uptime:J

.field private h5_PP_errorCode:Ljava/lang/String;

.field private h5_PP_errorMessage:Ljava/lang/String;

.field private h5_PP_fetchStart:J

.field private h5_PP_fetchStart_uptime:J

.field private h5_PP_finishLoad:J

.field private h5_PP_finishLoad_uptime:J

.field private h5_PP_interceptEnd:J

.field private h5_PP_interceptStart:J

.field private h5_PP_isFinished:Z

.field private h5_PP_loadEventEnd:J

.field private h5_PP_loadEventEnd_uptime:J

.field private h5_PP_loadEventStart:J

.field private h5_PP_loadEventStart_uptime:J

.field private h5_PP_navigationStart:J

.field private h5_PP_navigationStart_uptime:J

.field h5_PP_requestStart:J

.field h5_PP_requestStart_uptime:J

.field private h5_PP_responseEnd:J

.field private h5_PP_responseEnd_uptime:J

.field private h5_PP_startLoad:J

.field private h5_PP_startLoad_uptime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getH5_PP_FP()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FP:J

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getH5_PP_FP_uptime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FP:J

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart_uptime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getH5_PP_FSP()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FSP:J

    return-wide v0
.end method

.method public getH5_PP_FSP_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FSP_uptime:J

    return-wide v0
.end method

.method public getH5_PP_T1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T1:J

    return-wide v0
.end method

.method public getH5_PP_T1_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T1_uptime:J

    return-wide v0
.end method

.method public getH5_PP_T2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T2:J

    return-wide v0
.end method

.method public getH5_PP_T2_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T2_uptime:J

    return-wide v0
.end method

.method public getH5_PP_TTI()J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_TTI:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getH5_PP_TTI_uptime()J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_TTI:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP_uptime()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart_uptime()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getH5_PP_domContentLoadedEventStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domContentLoadedEventStart:J

    return-wide v0
.end method

.method public getH5_PP_domContentLoadedEventStart_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domContentLoadedEventStart_uptime:J

    return-wide v0
.end method

.method public getH5_PP_errorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_errorCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getH5_PP_errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_errorMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getH5_PP_fetchStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_fetchStart:J

    return-wide v0
.end method

.method public getH5_PP_fetchStart_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_fetchStart_uptime:J

    return-wide v0
.end method

.method public getH5_PP_finishLoad()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_finishLoad:J

    return-wide v0
.end method

.method public getH5_PP_finishLoad_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_finishLoad_uptime:J

    return-wide v0
.end method

.method public getH5_PP_interceptEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_interceptEnd:J

    return-wide v0
.end method

.method public getH5_PP_interceptStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_interceptStart:J

    return-wide v0
.end method

.method public getH5_PP_isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_isFinished:Z

    return v0
.end method

.method public getH5_PP_loadEventEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventEnd:J

    return-wide v0
.end method

.method public getH5_PP_loadEventEnd_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventEnd_uptime:J

    return-wide v0
.end method

.method public getH5_PP_loadEventStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventStart:J

    return-wide v0
.end method

.method public getH5_PP_loadEventStart_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventStart_uptime:J

    return-wide v0
.end method

.method public getH5_PP_navigationStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_navigationStart:J

    return-wide v0
.end method

.method public getH5_PP_navigationStart_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_navigationStart_uptime:J

    return-wide v0
.end method

.method public getH5_PP_responseEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_responseEnd:J

    return-wide v0
.end method

.method public getH5_PP_responseEnd_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_responseEnd_uptime:J

    return-wide v0
.end method

.method public getH5_PP_startLoad()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_startLoad:J

    return-wide v0
.end method

.method public getH5_PP_startLoad_uptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_startLoad_uptime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setH5_PP_FP(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FP:J

    return-void
.end method

.method public setH5_PP_FSP(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FSP:J

    return-void
.end method

.method public setH5_PP_FSP_uptime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_FSP_uptime:J

    return-void
.end method

.method public setH5_PP_T1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T1:J

    return-void
.end method

.method public setH5_PP_T1_uptime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T1_uptime:J

    return-void
.end method

.method public setH5_PP_T2(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T2:J

    return-void
.end method

.method public setH5_PP_T2_uptime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_T2_uptime:J

    return-void
.end method

.method public setH5_PP_TTI(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_TTI:J

    return-void
.end method

.method public setH5_PP_domComplete(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domComplete:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domComplete_uptime:J

    return-void
.end method

.method public setH5_PP_domContentLoadedEventStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domContentLoadedEventStart:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domContentLoadedEventStart_uptime:J

    return-void
.end method

.method public setH5_PP_domLoading(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domLoading:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_domLoading_uptime:J

    return-void
.end method

.method public setH5_PP_errorCode(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_errorCode:Ljava/lang/String;

    return-void
.end method

.method public setH5_PP_errorMessage(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setH5_PP_fetchStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_fetchStart:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_fetchStart_uptime:J

    return-void
.end method

.method public setH5_PP_finishLoad(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_finishLoad:J

    return-void
.end method

.method public setH5_PP_finishLoad_uptime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_finishLoad_uptime:J

    return-void
.end method

.method public setH5_PP_interceptEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_interceptEnd:J

    return-void
.end method

.method public setH5_PP_interceptStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_interceptStart:J

    return-void
.end method

.method public setH5_PP_isFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_isFinished:Z

    return-void
.end method

.method public setH5_PP_loadEventEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventEnd:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventEnd_uptime:J

    return-void
.end method

.method public setH5_PP_loadEventStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventStart:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_loadEventStart_uptime:J

    return-void
.end method

.method public setH5_PP_navigationStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_navigationStart:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_navigationStart_uptime:J

    return-void
.end method

.method public setH5_PP_requestStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_requestStart:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_requestStart_uptime:J

    return-void
.end method

.method public setH5_PP_responseEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_responseEnd:J

    .line 2
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_responseEnd_uptime:J

    return-void
.end method

.method public setH5_PP_startLoad(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_startLoad:J

    return-void
.end method

.method public setH5_PP_startLoad_uptime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->h5_PP_startLoad_uptime:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->url:Ljava/lang/String;

    return-void
.end method
