.class Landroidx/appcompat/app/AppLocalesMetadataHolderService$Api24Impl;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppLocalesMetadataHolderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDisabledComponentFlag()I
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const/16 v0, 0x200

    return v0
.end method
