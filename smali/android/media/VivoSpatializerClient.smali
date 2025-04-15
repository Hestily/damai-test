.class public Landroid/media/VivoSpatializerClient;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/media/IVivoSpatializer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final V_DEBUG:Z = true

.field private static final V_TAG:Ljava/lang/String; = "VivoSpatializerClient"

.field private static volatile sVsaClient:Landroid/media/VivoSpatializerClient;


# instance fields
.field private mIsSupport:Z

.field private mVSpat:Landroid/media/VivoSpatializer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 3
    .param p1    # Landroid/media/AudioManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "VivoSpatializerClient"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "AudioManager is null for VivoSpatializerClient"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Landroid/media/VivoSpatializer;

    invoke-direct {v1, p1}, Landroid/media/VivoSpatializer;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new VivoSpatializer API not support, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean p1, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/media/VivoSpatializerClient;->isSupportedInner()Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new VivoSpatializer, final mIsSupport: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVSpat: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance(Landroid/media/AudioManager;)Landroid/media/VivoSpatializerClient;
    .locals 2
    .param p0    # Landroid/media/AudioManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroid/media/VivoSpatializerClient;->sVsaClient:Landroid/media/VivoSpatializerClient;

    if-nez v0, :cond_1

    const-class v0, Landroid/media/VivoSpatializerClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/VivoSpatializerClient;->sVsaClient:Landroid/media/VivoSpatializerClient;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/VivoSpatializerClient;

    invoke-direct {v1, p0}, Landroid/media/VivoSpatializerClient;-><init>(Landroid/media/AudioManager;)V

    sput-object v1, Landroid/media/VivoSpatializerClient;->sVsaClient:Landroid/media/VivoSpatializerClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Landroid/media/VivoSpatializerClient;->sVsaClient:Landroid/media/VivoSpatializerClient;

    return-object p0
.end method

.method private isSupportedInner()Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/VivoSpatializerClient;->getVersion()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/VivoSpatializer;->addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;)V

    const-string p1, "addOnHeadTrackerAvailableListener, called"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addOnHeadTrackerAvailableListener API not support, err: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "addOnHeadTrackerAvailableListener API not support"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/VivoSpatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;)V

    const-string p1, "addOnSpatializerStateChangedListener, called"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addOnSpatializerStateChangedListener API not support, err: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "addOnSpatializerStateChangedListener API not support"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addOnVHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/VivoSpatializer;->addOnVHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;)V

    const-string p1, "addOnVHeadToSoundstagePoseUpdatedListener, called"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addOnVHeadToSoundstagePoseUpdatedListener API not support, err: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p1, "addOnVHeadToSoundstagePoseUpdatedListener API not support"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .locals 3
    .param p1    # Landroid/media/AudioAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/AudioFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const/4 v1, 0x0

    const-string v2, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/VivoSpatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "canBeSpatialized, vCanBeSpatialized: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canBeSpatialized API not support, err: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    :goto_1
    const-string p1, "canBeSpatialized API not support"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getImmersiveAudioLevel()I
    .locals 5

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/VivoSpatializer;->getImmersiveAudioLevel()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImmersiveAudioLevel, vSpatLevel: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImmersiveAudioLevel API not support, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    :goto_1
    const-string v0, "getImmersiveAudioLevel API not support"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getVersion()I
    .locals 5

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const/4 v1, -0x1

    const-string v2, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/VivoSpatializer;->getVersion()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersion, vSpatVersion: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion API not support, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    :goto_1
    const-string v0, "getVersion API not support"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isAvailable()Z
    .locals 5

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const/4 v1, 0x0

    const-string v2, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/VivoSpatializer;->isAvailable()Z

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable, vSpatAvailable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable API not support, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    :goto_1
    const-string v0, "isAvailable API not support"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isEnabled()Z
    .locals 5

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const/4 v1, 0x0

    const-string v2, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/VivoSpatializer;->isEnabled()Z

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled, vSpatEnabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnabled API not support, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    :goto_1
    const-string v0, "isEnabled API not support"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isHeadTrackerAvailable()Z
    .locals 5

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const/4 v1, 0x0

    const-string v2, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/VivoSpatializer;->isHeadTrackerAvailable()Z

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHeadTrackerAvailable, vSpatHeadTrackerAvailable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHeadTrackerAvailable API not support, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    :goto_1
    const-string v0, "isHeadTrackerAvailable API not support"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    return v0
.end method

.method public removeOnHeadTrackerAvailableListener(Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;)V
    .locals 3
    .param p1    # Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/VivoSpatializer;->removeOnHeadTrackerAvailableListener(Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;)V

    const-string/jumbo p1, "removeOnHeadTrackerAvailableListener, called"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOnHeadTrackerAvailableListener API not support, err: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string/jumbo p1, "removeOnHeadTrackerAvailableListener API not support"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeOnSpatializerStateChangedListener(Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;)V
    .locals 3
    .param p1    # Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/VivoSpatializer;->removeOnSpatializerStateChangedListener(Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;)V

    const-string/jumbo p1, "removeOnSpatializerStateChangedListener, called"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOnSpatializerStateChangedListener API not support, err: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string/jumbo p1, "removeOnSpatializerStateChangedListener API not support"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeOnVHeadToSoundstagePoseUpdatedListener(Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;)V
    .locals 3
    .param p1    # Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/media/VivoSpatializerClient;->mIsSupport:Z

    const-string v1, "VivoSpatializerClient"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/VivoSpatializerClient;->mVSpat:Landroid/media/VivoSpatializer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/VivoSpatializer;->removeOnVHeadToSoundstagePoseUpdatedListener(Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;)V

    const-string/jumbo p1, "removeOnVHeadToSoundstagePoseUpdatedListener, called"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOnVHeadToSoundstagePoseUpdatedListener API not support, err: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string/jumbo p1, "removeOnVHeadToSoundstagePoseUpdatedListener API not support"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
