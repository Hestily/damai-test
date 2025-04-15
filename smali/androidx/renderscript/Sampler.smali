.class public Landroidx/renderscript/Sampler;
.super Landroidx/renderscript/BaseObj;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Sampler$Builder;,
        Landroidx/renderscript/Sampler$Value;
    }
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroidx/renderscript/Sampler$Value;

.field mMin:Landroidx/renderscript/Sampler$Value;

.field mWrapR:Landroidx/renderscript/Sampler$Value;

.field mWrapS:Landroidx/renderscript/Sampler$Value;

.field mWrapT:Landroidx/renderscript/Sampler$Value;


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static CLAMP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static CLAMP_NEAREST(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->CLAMP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static WRAP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    sget-object v1, Landroidx/renderscript/Sampler$Value;->LINEAR:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroidx/renderscript/Sampler;

    return-object p0
.end method

.method public static WRAP_NEAREST(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/renderscript/Sampler$Builder;

    invoke-direct {v0, p0}, Landroidx/renderscript/Sampler$Builder;-><init>(Landroidx/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroidx/renderscript/Sampler$Value;->NEAREST:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMinification(Landroidx/renderscript/Sampler$Value;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setMagnification(Landroidx/renderscript/Sampler$Value;)V

    .line 5
    sget-object v1, Landroidx/renderscript/Sampler$Value;->WRAP:Landroidx/renderscript/Sampler$Value;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapS(Landroidx/renderscript/Sampler$Value;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Sampler$Builder;->setWrapT(Landroidx/renderscript/Sampler$Value;)V

    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Sampler$Builder;->create()Landroidx/renderscript/Sampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroidx/renderscript/Sampler;

    return-object p0
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/renderscript/Sampler;->mAniso:F

    return v0
.end method

.method public getMagnification()Landroidx/renderscript/Sampler$Value;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Sampler;->mMag:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getMinification()Landroidx/renderscript/Sampler$Value;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Sampler;->mMin:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapS()Landroidx/renderscript/Sampler$Value;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Sampler;->mWrapS:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapT()Landroidx/renderscript/Sampler$Value;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/renderscript/Sampler;->mWrapT:Landroidx/renderscript/Sampler$Value;

    return-object v0
.end method
