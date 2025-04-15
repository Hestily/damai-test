.class public Landroid/taobao/windvane/WVPerformanceConfig;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private closeUCHA:Z

.field private fSPFilterAnimation:Ljava/lang/String;

.field private filterIllegalUrl:Z

.field private isOpenFSP:Z

.field private isOpenH5PP:Z

.field private isOpenH5_2:Z

.field private isOpenUserPP:Z

.field private jsErrorRatio:Ljava/lang/String;

.field private onlyBkpg:Z

.field private openHA:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.00"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->jsErrorRatio:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5PP:Z

    .line 5
    iput-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenUserPP:Z

    .line 6
    iput-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2:Z

    const-string/jumbo v2, "true"

    .line 7
    iput-object v2, p0, Landroid/taobao/windvane/WVPerformanceConfig;->fSPFilterAnimation:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->openHA:Z

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->onlyBkpg:Z

    .line 10
    iput-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->closeUCHA:Z

    .line 11
    iput-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->filterIllegalUrl:Z

    return-void
.end method


# virtual methods
.method public closeUCHA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->closeUCHA:Z

    return v0
.end method

.method public getJsErrorRatio()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->jsErrorRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getfSPFilterAnimation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->fSPFilterAnimation:Ljava/lang/String;

    return-object v0
.end method

.method public isFilterIllegalUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->filterIllegalUrl:Z

    return v0
.end method

.method public isOnlyBkpg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->onlyBkpg:Z

    return v0
.end method

.method public isOpenFSP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP:Z

    return v0
.end method

.method public isOpenH5PP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5PP:Z

    return v0
.end method

.method public isOpenH5_2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2:Z

    return v0
.end method

.method public isOpenHA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->openHA:Z

    return v0
.end method

.method public isOpenUserPP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenUserPP:Z

    return v0
.end method

.method public setCloseUCHA(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->closeUCHA:Z

    return-void
.end method

.method public setFilterIllegalUrl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->filterIllegalUrl:Z

    return-void
.end method

.method public setJsErrorRatio(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->jsErrorRatio:Ljava/lang/String;

    return-void
.end method

.method public setOnlyBkpg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->onlyBkpg:Z

    return-void
.end method

.method public setOpenFSP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP:Z

    return-void
.end method

.method public setOpenH5PP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5PP:Z

    return-void
.end method

.method public setOpenH5_2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2:Z

    return-void
.end method

.method public setOpenHA(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->openHA:Z

    return-void
.end method

.method public setOpenUserPP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenUserPP:Z

    return-void
.end method

.method public setfSPFilterAnimation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->fSPFilterAnimation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WVPerformanceConfig{jsErrorRatio=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->jsErrorRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOpenFSP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenFSP:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOpenH5PP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5PP:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOpenUserPP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenUserPP:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOpenH5_2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fSPFilterAnimation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/WVPerformanceConfig;->fSPFilterAnimation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", openHA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->openHA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onlyBkpg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->onlyBkpg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFilterIllegalUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->filterIllegalUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", closeUCHA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/taobao/windvane/WVPerformanceConfig;->closeUCHA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
