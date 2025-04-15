.class public interface abstract Landroid/media/IVivoSpatializer;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;,
        Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;,
        Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;
    }
.end annotation


# static fields
.field public static final SPATIALIZER_IMMERSIVE_LEVEL_MULTICHANNEL:I = 0x1

.field public static final SPATIALIZER_IMMERSIVE_LEVEL_NONE:I = 0x0

.field public static final SPATIALIZER_IMMERSIVE_LEVEL_OTHER:I = -0x1

.field public static final V_SDK_MIN_VERSION:I = 0x2710


# virtual methods
.method public abstract addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;)V
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;)V
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addOnVHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;)V
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .param p1    # Landroid/media/AudioAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/AudioFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getImmersiveAudioLevel()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isHeadTrackerAvailable()Z
.end method

.method public abstract removeOnHeadTrackerAvailableListener(Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;)V
    .param p1    # Landroid/media/IVivoSpatializer$OnHeadTrackerAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeOnSpatializerStateChangedListener(Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;)V
    .param p1    # Landroid/media/IVivoSpatializer$OnSpatializerStateChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeOnVHeadToSoundstagePoseUpdatedListener(Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;)V
    .param p1    # Landroid/media/IVivoSpatializer$OnVHeadToSoundstagePoseUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
