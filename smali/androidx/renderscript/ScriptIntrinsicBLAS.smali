.class public final Landroidx/renderscript/ScriptIntrinsicBLAS;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/ScriptIntrinsicBLAS$Side;,
        Landroidx/renderscript/ScriptIntrinsicBLAS$Diag;,
        Landroidx/renderscript/ScriptIntrinsicBLAS$Uplo;,
        Landroidx/renderscript/ScriptIntrinsicBLAS$Transpose;
    }
.end annotation


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field private static final INTRINSIC_API_LEVEL:I = 0x17

.field public static final LEFT:I = 0x8d

.field public static final LOWER:I = 0x7a

.field public static final NON_UNIT:I = 0x83

.field public static final NO_TRANSPOSE:I = 0x6f

.field public static final RIGHT:I = 0x8e

.field private static final RsBlas_bnnm:I = 0x3e8

.field private static final RsBlas_caxpy:I = 0x1d

.field private static final RsBlas_ccopy:I = 0x1c

.field private static final RsBlas_cdotc_sub:I = 0x6

.field private static final RsBlas_cdotu_sub:I = 0x5

.field private static final RsBlas_cgbmv:I = 0x40

.field private static final RsBlas_cgemm:I = 0x7d

.field private static final RsBlas_cgemv:I = 0x3f

.field private static final RsBlas_cgerc:I = 0x63

.field private static final RsBlas_cgeru:I = 0x62

.field private static final RsBlas_chbmv:I = 0x60

.field private static final RsBlas_chemm:I = 0x89

.field private static final RsBlas_chemv:I = 0x5f

.field private static final RsBlas_cher:I = 0x64

.field private static final RsBlas_cher2:I = 0x66

.field private static final RsBlas_cher2k:I = 0x8b

.field private static final RsBlas_cherk:I = 0x8a

.field private static final RsBlas_chpmv:I = 0x61

.field private static final RsBlas_chpr:I = 0x65

.field private static final RsBlas_chpr2:I = 0x67

.field private static final RsBlas_cscal:I = 0x2b

.field private static final RsBlas_csscal:I = 0x2d

.field private static final RsBlas_cswap:I = 0x1b

.field private static final RsBlas_csymm:I = 0x7e

.field private static final RsBlas_csyr2k:I = 0x80

.field private static final RsBlas_csyrk:I = 0x7f

.field private static final RsBlas_ctbmv:I = 0x42

.field private static final RsBlas_ctbsv:I = 0x45

.field private static final RsBlas_ctpmv:I = 0x43

.field private static final RsBlas_ctpsv:I = 0x46

.field private static final RsBlas_ctrmm:I = 0x81

.field private static final RsBlas_ctrmv:I = 0x41

.field private static final RsBlas_ctrsm:I = 0x82

.field private static final RsBlas_ctrsv:I = 0x44

.field private static final RsBlas_dasum:I = 0xc

.field private static final RsBlas_daxpy:I = 0x1a

.field private static final RsBlas_dcopy:I = 0x19

.field private static final RsBlas_ddot:I = 0x4

.field private static final RsBlas_dgbmv:I = 0x38

.field private static final RsBlas_dgemm:I = 0x77

.field private static final RsBlas_dgemv:I = 0x37

.field private static final RsBlas_dger:I = 0x5a

.field private static final RsBlas_dnrm2:I = 0xb

.field private static final RsBlas_drot:I = 0x27

.field private static final RsBlas_drotg:I = 0x25

.field private static final RsBlas_drotm:I = 0x28

.field private static final RsBlas_drotmg:I = 0x26

.field private static final RsBlas_dsbmv:I = 0x58

.field private static final RsBlas_dscal:I = 0x2a

.field private static final RsBlas_dsdot:I = 0x2

.field private static final RsBlas_dspmv:I = 0x59

.field private static final RsBlas_dspr:I = 0x5c

.field private static final RsBlas_dspr2:I = 0x5e

.field private static final RsBlas_dswap:I = 0x18

.field private static final RsBlas_dsymm:I = 0x78

.field private static final RsBlas_dsymv:I = 0x57

.field private static final RsBlas_dsyr:I = 0x5b

.field private static final RsBlas_dsyr2:I = 0x5d

.field private static final RsBlas_dsyr2k:I = 0x7a

.field private static final RsBlas_dsyrk:I = 0x79

.field private static final RsBlas_dtbmv:I = 0x3a

.field private static final RsBlas_dtbsv:I = 0x3d

.field private static final RsBlas_dtpmv:I = 0x3b

.field private static final RsBlas_dtpsv:I = 0x3e

.field private static final RsBlas_dtrmm:I = 0x7b

.field private static final RsBlas_dtrmv:I = 0x39

.field private static final RsBlas_dtrsm:I = 0x7c

.field private static final RsBlas_dtrsv:I = 0x3c

.field private static final RsBlas_dzasum:I = 0x10

.field private static final RsBlas_dznrm2:I = 0xf

.field private static final RsBlas_icamax:I = 0x13

.field private static final RsBlas_idamax:I = 0x12

.field private static final RsBlas_isamax:I = 0x11

.field private static final RsBlas_izamax:I = 0x14

.field private static final RsBlas_sasum:I = 0xa

.field private static final RsBlas_saxpy:I = 0x17

.field private static final RsBlas_scasum:I = 0xe

.field private static final RsBlas_scnrm2:I = 0xd

.field private static final RsBlas_scopy:I = 0x16

.field private static final RsBlas_sdot:I = 0x3

.field private static final RsBlas_sdsdot:I = 0x1

.field private static final RsBlas_sgbmv:I = 0x30

.field private static final RsBlas_sgemm:I = 0x71

.field private static final RsBlas_sgemv:I = 0x2f

.field private static final RsBlas_sger:I = 0x52

.field private static final RsBlas_snrm2:I = 0x9

.field private static final RsBlas_srot:I = 0x23

.field private static final RsBlas_srotg:I = 0x21

.field private static final RsBlas_srotm:I = 0x24

.field private static final RsBlas_srotmg:I = 0x22

.field private static final RsBlas_ssbmv:I = 0x50

.field private static final RsBlas_sscal:I = 0x29

.field private static final RsBlas_sspmv:I = 0x51

.field private static final RsBlas_sspr:I = 0x54

.field private static final RsBlas_sspr2:I = 0x56

.field private static final RsBlas_sswap:I = 0x15

.field private static final RsBlas_ssymm:I = 0x72

.field private static final RsBlas_ssymv:I = 0x4f

.field private static final RsBlas_ssyr:I = 0x53

.field private static final RsBlas_ssyr2:I = 0x55

.field private static final RsBlas_ssyr2k:I = 0x74

.field private static final RsBlas_ssyrk:I = 0x73

.field private static final RsBlas_stbmv:I = 0x32

.field private static final RsBlas_stbsv:I = 0x35

.field private static final RsBlas_stpmv:I = 0x33

.field private static final RsBlas_stpsv:I = 0x36

.field private static final RsBlas_strmm:I = 0x75

.field private static final RsBlas_strmv:I = 0x31

.field private static final RsBlas_strsm:I = 0x76

.field private static final RsBlas_strsv:I = 0x34

.field private static final RsBlas_zaxpy:I = 0x20

.field private static final RsBlas_zcopy:I = 0x1f

.field private static final RsBlas_zdotc_sub:I = 0x8

.field private static final RsBlas_zdotu_sub:I = 0x7

.field private static final RsBlas_zdscal:I = 0x2e

.field private static final RsBlas_zgbmv:I = 0x48

.field private static final RsBlas_zgemm:I = 0x83

.field private static final RsBlas_zgemv:I = 0x47

.field private static final RsBlas_zgerc:I = 0x6c

.field private static final RsBlas_zgeru:I = 0x6b

.field private static final RsBlas_zhbmv:I = 0x69

.field private static final RsBlas_zhemm:I = 0x8c

.field private static final RsBlas_zhemv:I = 0x68

.field private static final RsBlas_zher:I = 0x6d

.field private static final RsBlas_zher2:I = 0x6f

.field private static final RsBlas_zher2k:I = 0x8e

.field private static final RsBlas_zherk:I = 0x8d

.field private static final RsBlas_zhpmv:I = 0x6a

.field private static final RsBlas_zhpr:I = 0x6e

.field private static final RsBlas_zhpr2:I = 0x70

.field private static final RsBlas_zscal:I = 0x2c

.field private static final RsBlas_zswap:I = 0x1e

.field private static final RsBlas_zsymm:I = 0x84

.field private static final RsBlas_zsyr2k:I = 0x86

.field private static final RsBlas_zsyrk:I = 0x85

.field private static final RsBlas_ztbmv:I = 0x4a

.field private static final RsBlas_ztbsv:I = 0x4d

.field private static final RsBlas_ztpmv:I = 0x4b

.field private static final RsBlas_ztpsv:I = 0x4e

.field private static final RsBlas_ztrmm:I = 0x87

.field private static final RsBlas_ztrmv:I = 0x49

.field private static final RsBlas_ztrsm:I = 0x88

.field private static final RsBlas_ztrsv:I = 0x4c

.field public static final TRANSPOSE:I = 0x70

.field public static final UNIT:I = 0x84

.field public static final UPPER:I = 0x79


# instance fields
.field private mLUT:Landroidx/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/ScriptIntrinsicBLAS;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    .line 2
    invoke-static {p0}, Landroidx/renderscript/Element;->U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v1

    .line 3
    new-instance v3, Landroidx/renderscript/ScriptIntrinsicBLAS;

    invoke-direct {v3, v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    invoke-virtual {v3, v0}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    return-object v3
.end method

.method static validateConjTranspose(I)V
    .locals 1

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x71

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Invalid transpose passed to BLAS"

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static validateDiag(I)V
    .locals 1

    const/16 v0, 0x83

    if-eq p0, v0, :cond_1

    const/16 v0, 0x84

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Invalid diag passed to BLAS"

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p2, 0x1

    if-gt p0, p2, :cond_3

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p2, :cond_3

    if-lez p4, :cond_2

    if-lez p6, :cond_2

    const/16 p0, 0x6f

    if-ne p1, p0, :cond_0

    sub-int/2addr v1, p2

    mul-int v1, v1, p4

    add-int/2addr v1, p2

    sub-int/2addr v0, p2

    mul-int v0, v0, p6

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    mul-int v0, v0, p4

    add-int/lit8 p0, v0, 0x1

    sub-int/2addr v1, p2

    mul-int v1, v1, p6

    add-int/lit8 v0, v1, 0x1

    move v1, p0

    .line 6
    :goto_0
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    if-ne p0, v1, :cond_1

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    if-ne p0, v0, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for GEMV"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateGER(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_4

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, v0, :cond_4

    .line 3
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    .line 4
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/renderscript/Type;->getX()I

    move-result p5

    if-lt p5, v0, :cond_3

    if-lt p0, v0, :cond_3

    if-lez p2, :cond_2

    if-lez p4, :cond_2

    sub-int/2addr p0, v0

    mul-int p0, p0, p2

    add-int/2addr p0, v0

    .line 5
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    const-string p2, "Incorrect vector dimensions for GER"

    if-ne p1, p0, :cond_1

    sub-int/2addr p5, v0

    mul-int p5, p5, p4

    add-int/2addr p5, v0

    .line 6
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    if-ne p0, p5, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "M and N must be 1 or greater for GER"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_3

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, v0, :cond_3

    .line 3
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    .line 4
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/renderscript/Type;->getX()I

    move-result p5

    if-lez p2, :cond_2

    if-lez p4, :cond_2

    sub-int/2addr p0, v0

    mul-int p0, p0, p2

    add-int/2addr p0, v0

    .line 5
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    const-string p2, "Incorrect vector dimensions for GERU"

    if-ne p1, p0, :cond_1

    sub-int/2addr p5, v0

    mul-int p5, p5, p4

    add-int/2addr p5, v0

    .line 6
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    if-ne p0, p5, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateHEMM(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    .line 4
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result p2

    if-ne p0, p2, :cond_4

    const/16 p2, 0x8d

    if-ne p1, p2, :cond_0

    .line 5
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result p2

    if-ne p0, p2, :cond_1

    :cond_0
    const/16 p2, 0x8e

    if-ne p1, p2, :cond_2

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called HEMM with invalid B"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p0, p1, :cond_3

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p0, p1, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called HEMM with mismatched B and C"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called HEMM with non-square A"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateHER2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 3
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    .line 4
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/renderscript/Type;->getY()I

    move-result p4

    if-ne p0, p4, :cond_4

    const/16 p4, 0x6f

    const-string v0, "Called HER2K with invalid matrices"

    if-ne p1, p4, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p0, :cond_3

    .line 8
    :goto_0
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p0, p1, :cond_2

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p0, p1, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called HER2K with invalid A and B matrices"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called HER2K with non-square C"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateHERK(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 3
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    .line 4
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getY()I

    move-result p3

    if-ne p0, p3, :cond_3

    const/16 p3, 0x6f

    const-string v0, "Called HERK with invalid A"

    if-ne p1, p3, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p0, p1, :cond_2

    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called HERK with non-square C"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 4

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz p6, :cond_17

    .line 3
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    .line 4
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p6

    invoke-virtual {p6}, Landroidx/renderscript/Type;->getX()I

    move-result p6

    const/16 v0, 0x8e

    const/4 v1, -0x1

    if-ne p3, v0, :cond_9

    if-nez p4, :cond_4

    if-nez p5, :cond_5

    :cond_4
    if-eqz p4, :cond_6

    if-eqz p5, :cond_5

    goto :goto_1

    .line 5
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Provided Matrix A without Matrix B, or vice versa"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    .line 7
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    goto :goto_2

    :cond_7
    const/4 p1, -0x1

    const/4 p2, -0x1

    :goto_2
    if-eqz p4, :cond_8

    .line 8
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 9
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    move-result p3

    move v3, p3

    move p3, p2

    move p2, v1

    move v1, v3

    goto :goto_6

    :cond_8
    move p3, p2

    const/4 p2, -0x1

    goto :goto_6

    :cond_9
    const/16 p3, 0x71

    const/16 v0, 0x70

    if-eqz p4, :cond_c

    if-eq p1, v0, :cond_b

    if-ne p1, p3, :cond_a

    goto :goto_3

    .line 10
    :cond_a
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    .line 11
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    goto :goto_4

    .line 12
    :cond_b
    :goto_3
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    .line 13
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    goto :goto_4

    :cond_c
    const/4 p1, -0x1

    const/4 v2, -0x1

    :goto_4
    if-eqz p5, :cond_f

    if-eq p2, v0, :cond_e

    if-ne p2, p3, :cond_d

    goto :goto_5

    .line 14
    :cond_d
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 15
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    move p3, p2

    move p2, p1

    move p1, v1

    move v1, v2

    goto :goto_6

    .line 16
    :cond_e
    :goto_5
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 17
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    move p3, v1

    move v1, v2

    move v3, p2

    move p2, p1

    move p1, v3

    goto :goto_6

    :cond_f
    move p2, p1

    move v1, v2

    const/4 p1, -0x1

    const/4 p3, -0x1

    :goto_6
    const-string v0, "Called BLAS with invalid dimensions"

    if-eqz p4, :cond_11

    if-eqz p5, :cond_11

    if-ne v1, p1, :cond_10

    if-ne p2, p0, :cond_10

    if-ne p3, p6, :cond_10

    goto :goto_7

    .line 18
    :cond_10
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    if-eqz p4, :cond_14

    if-ne p0, p6, :cond_13

    if-ne p2, p0, :cond_12

    goto :goto_7

    .line 19
    :cond_12
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_13
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Matrix C is not symmetric"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    if-eqz p4, :cond_16

    if-eqz p5, :cond_16

    if-ne v1, p1, :cond_15

    goto :goto_7

    .line 21
    :cond_15
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_7
    return-void

    .line 22
    :cond_17
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Allocation C cannot be null"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSPMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 3
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_5

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_5

    .line 4
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_4

    .line 5
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    add-int/lit8 v0, p0, 0x1

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_3

    if-lez p4, :cond_2

    if-lez p6, :cond_2

    add-int/lit8 p2, p0, -0x1

    mul-int p4, p4, p2

    add-int/2addr p4, p1

    .line 7
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    move-result p3

    const-string v0, "Incorrect vector dimensions for SPMV"

    if-ne p3, p4, :cond_1

    mul-int p2, p2, p6

    add-int/2addr p2, p1

    .line 8
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p2, :cond_0

    return p0

    .line 9
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Invalid dimension for Ap"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_6
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_4

    .line 4
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_3

    .line 5
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/renderscript/Type;->getX()I

    move-result p4

    add-int/lit8 v0, p0, 0x1

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x2

    if-ne p4, v0, :cond_2

    if-lez p3, :cond_1

    add-int/lit8 p4, p0, -0x1

    mul-int p4, p4, p3

    add-int/2addr p4, p1

    .line 7
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p4, :cond_0

    return p0

    .line 8
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for SPR"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Invalid dimension for Ap"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_4

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_4

    .line 4
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_3

    .line 5
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 6
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p6

    invoke-virtual {p6}, Landroidx/renderscript/Type;->getX()I

    move-result p6

    add-int/lit8 v0, p0, 0x1

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x2

    if-ne p6, v0, :cond_2

    if-lez p3, :cond_1

    if-lez p5, :cond_1

    add-int/lit8 p6, p0, -0x1

    mul-int p3, p3, p6

    add-int/2addr p3, p1

    mul-int p6, p6, p5

    add-int/2addr p6, p1

    .line 7
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p3, :cond_0

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p6, :cond_0

    return p0

    .line 8
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for SPR2"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Invalid dimension for Ap"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 4
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p2, 0x1

    if-gt p0, p2, :cond_3

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p2, :cond_3

    if-lez p5, :cond_2

    if-lez p6, :cond_2

    add-int/lit8 p0, p1, -0x1

    mul-int p5, p5, p0

    add-int/2addr p5, p2

    .line 6
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    move-result p3

    const-string v0, "Incorrect vector dimensions for SYMV"

    if-ne p3, p5, :cond_1

    mul-int p0, p0, p6

    add-int/2addr p0, p2

    .line 7
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    if-ne p2, p0, :cond_0

    return p1

    .line 8
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "A must be a square matrix for SYMV"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    .line 4
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_3

    .line 5
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p0, p1, :cond_2

    if-lez p3, :cond_1

    add-int/lit8 p1, p0, -0x1

    mul-int p1, p1, p3

    add-int/2addr p1, v0

    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    if-ne p2, p1, :cond_0

    return p0

    .line 7
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for SYR"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "A must be a symmetric matrix"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_3

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_3

    .line 4
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    .line 5
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p6

    invoke-virtual {p6}, Landroidx/renderscript/Type;->getY()I

    move-result p6

    if-ne p0, p6, :cond_2

    if-lez p3, :cond_1

    if-lez p5, :cond_1

    add-int/lit8 p6, p0, -0x1

    mul-int p3, p3, p6

    add-int/2addr p3, p1

    mul-int p6, p6, p5

    add-int/2addr p6, p1

    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p3, :cond_0

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p6, :cond_0

    return p0

    .line 7
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for SYR"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "A must be a symmetric matrix"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x70

    if-ne p1, p0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    .line 5
    :goto_0
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p0, :cond_2

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p1, p0, :cond_2

    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p0, p1, :cond_1

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    if-ne p0, p1, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Invalid A and B in SYR2K"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Invalid symmetric matrix in SYR2K"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateSide(I)V
    .locals 1

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8e

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Invalid side passed to BLAS"

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    invoke-static {p3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 4
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 5
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_4

    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    if-gt p0, p1, :cond_3

    .line 7
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    int-to-double p2, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-int p0, p2

    .line 8
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    add-int/lit8 p3, p0, 0x1

    mul-int p3, p3, p0

    div-int/lit8 p3, p3, 0x2

    if-ne p2, p3, :cond_2

    if-lez p6, :cond_1

    add-int/lit8 p2, p0, -0x1

    mul-int p2, p2, p6

    add-int/2addr p2, p1

    .line 9
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    move-result p1

    if-ne p1, p2, :cond_0

    return p0

    .line 10
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for TPMV"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Invalid dimension for Ap"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    .line 5
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    if-ne p0, p2, :cond_3

    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getY()I

    move-result p3

    .line 7
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/renderscript/Type;->getX()I

    move-result p4

    const/16 v0, 0x8d

    const-string v1, "Called TRMM with invalid matrices"

    if-ne p1, v0, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne p4, p0, :cond_2

    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called TRMM with a non-symmetric matrix A"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    invoke-static {p3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 4
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    move-result p1

    .line 5
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    if-ne p2, p1, :cond_4

    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    move-result p0

    const/4 p2, 0x1

    if-gt p0, p2, :cond_2

    if-lez p6, :cond_1

    sub-int/2addr p1, p2

    mul-int p1, p1, p6

    add-int/2addr p1, p2

    .line 8
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Incorrect vector dimensions for TRMV"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Vector increments must be greater than 0"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "A must be a square matrix for TRMV"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    move-result p0

    .line 5
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result p2

    if-ne p0, p2, :cond_3

    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result p2

    .line 7
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    move-result p3

    const/16 p4, 0x8d

    const-string v0, "Called TRSM with invalid matrix dimensions"

    if-ne p1, p4, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne p0, p3, :cond_2

    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called TRSM with a non-symmetric matrix A"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Called BLAS with wrong Element type"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateTranspose(I)V
    .locals 1

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x70

    if-eq p0, v0, :cond_1

    const/16 v0, 0x71

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Invalid transpose passed to BLAS"

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static validateUplo(I)V
    .locals 1

    const/16 v0, 0x79

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string v0, "Invalid uplo passed to BLAS"

    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public BNNM(Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v9, p2

    move-object/from16 v8, p3

    move/from16 v12, p4

    move-object/from16 v10, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/16 v2, 0x6f

    const/16 v3, 0x70

    const/4 v4, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    if-ltz v9, :cond_2

    const/16 v1, 0xff

    if-gt v9, v1, :cond_2

    if-ltz v12, :cond_1

    if-gt v12, v1, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v4

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v5

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v17

    .line 6
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v15

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v18

    if-eqz v17, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 10
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v7

    .line 11
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v10

    move-wide v13, v10

    move-wide v10, v7

    move-wide v7, v1

    goto :goto_0

    :cond_0
    move-wide v7, v13

    move-wide v10, v15

    move-wide/from16 v13, v18

    .line 12
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    move/from16 v9, p2

    move/from16 v12, p4

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-virtual/range {v1 .. v17}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V

    return-void

    .line 13
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Invalid b_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_2
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Invalid a_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public CGBMV(IIILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v21

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v22

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v38, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v32, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x40

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    move/from16 v16, p1

    move/from16 v34, p7

    move/from16 v35, p10

    move/from16 v36, p2

    move/from16 v37, p3

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void

    .line 12
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "KL and KU must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public CGEMM(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x6f

    if-eq v3, v2, :cond_0

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getX()I

    move-result v4

    .line 5
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    move-result v5

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getY()I

    move-result v4

    .line 7
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getX()I

    move-result v5

    :goto_0
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v4, p2

    if-eq v4, v2, :cond_1

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    :goto_1
    move/from16 v22, v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v7

    .line 13
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    if-eqz v38, :cond_2

    .line 14
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    .line 15
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v7

    .line 16
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v9

    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    move-wide/from16 v32, v9

    goto :goto_2

    :cond_2
    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    move-wide/from16 v32, v13

    .line 17
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x7d

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v16, p1

    move/from16 v17, p2

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CGEMV(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v21

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v22

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v38, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v32, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x3f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v16, p1

    move/from16 v34, p5

    move/from16 v35, p8

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CGERC(Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 2
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v13

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v29

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v29, :cond_0

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v23, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x63

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v16, v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v25, p3

    move/from16 v26, p5

    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CGERU(Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 2
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v13

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v29

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v29, :cond_0

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v23, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x62

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v16, v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v25, p3

    move/from16 v26, p5

    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHBMV(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v22

    if-ltz p2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v38, :cond_0

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v32, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x60

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v19, p1

    move/from16 v23, p2

    move/from16 v34, p6

    move/from16 v35, p9

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void

    .line 10
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be 0 or greater for HBMV"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public CHEMM(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v6}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v6

    move/from16 v13, p1

    invoke-static {v6, v13, v2, v3, v5}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v33

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    .line 5
    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    .line 6
    iget-object v10, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v5, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v10

    if-eqz v33, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    .line 8
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v5}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v8

    move-wide/from16 v23, v2

    move-wide/from16 v21, v6

    move-wide/from16 v27, v8

    goto :goto_0

    :cond_0
    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v27, v10

    .line 10
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v7, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    const/16 v10, 0x89

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v16

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v17

    const/16 v18, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v19, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v20, v1

    iget v1, v4, Landroidx/renderscript/Float2;->x:F

    move/from16 v25, v1

    iget v1, v4, Landroidx/renderscript/Float2;->y:F

    move/from16 v26, v1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-virtual/range {v7 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHEMV(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v22

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v38, :cond_0

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v32, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x5f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v19, p1

    move/from16 v34, p5

    move/from16 v35, p8

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHER(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p4

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v30

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v30, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v18, v1

    move-wide/from16 v24, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v24, v4

    move-wide/from16 v18, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move v14, v3

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHER2(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v13

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v29

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v29, :cond_0

    .line 6
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v23, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x66

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v16, v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v10, p1

    move/from16 v25, p4

    move/from16 v26, p6

    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHER2K(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v12, p4

    move-object/from16 v1, p5

    move-object/from16 v11, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-static {v2, v5, v12, v1, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x6f

    if-ne v5, v2, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    :goto_0
    move/from16 v17, v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 7
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 8
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v27, :cond_1

    .line 9
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 10
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    move-wide/from16 v18, v1

    move-wide/from16 v21, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v18, v2

    move-wide/from16 v21, v6

    .line 12
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x8b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    iget v13, v8, Landroidx/renderscript/Float2;->x:F

    iget v14, v8, Landroidx/renderscript/Float2;->y:F

    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v15

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v12, v17

    move-wide/from16 v17, v18

    move/from16 v19, p6

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHERK(IIFLandroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v8, p6

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-static {v2, v5, v1, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x71

    if-ne v5, v2, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    :goto_0
    move v12, v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 7
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v27, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    move-wide v15, v1

    move-wide/from16 v21, v3

    goto :goto_1

    :cond_1
    move-wide v15, v2

    move-wide/from16 v21, v6

    .line 10
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x8a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v13, p3

    move/from16 v19, p5

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHPMV(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v22

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v38, :cond_0

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v32, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x61

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v19, p1

    move/from16 v34, p5

    move/from16 v35, p8

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHPR(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p4

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v30

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v30, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v18, v1

    move-wide/from16 v24, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v24, v4

    move-wide/from16 v18, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x65

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move v14, v3

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CHPR2(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v13

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v29

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v29, :cond_0

    .line 6
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v23, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x67

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v16, v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v10, p1

    move/from16 v25, p4

    move/from16 v26, p6

    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CSYMM(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v39

    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 7
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 8
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v39, :cond_0

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 11
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v27, v2

    move-wide/from16 v29, v4

    move-wide/from16 v33, v6

    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v13, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v14

    const/16 v16, 0x7e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v22

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v23

    const/16 v24, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v25, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v26, v1

    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    move/from16 v31, v1

    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    move/from16 v32, v1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-virtual/range {v13 .. v39}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void

    .line 13
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Matrix A is not symmetric"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public CSYR2K(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    invoke-static {v3, v5, v1, v2, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v3, 0x6f

    if-eq v5, v3, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    :goto_0
    move v15, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    .line 8
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v9

    if-eqz v27, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    move-wide/from16 v21, v1

    move-wide/from16 v16, v3

    move-wide/from16 v28, v6

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v3

    move-wide/from16 v21, v6

    move-wide/from16 v28, v9

    .line 12
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    iget v13, v8, Landroidx/renderscript/Float2;->x:F

    iget v14, v8, Landroidx/renderscript/Float2;->y:F

    iget v8, v12, Landroidx/renderscript/Float2;->x:F

    move/from16 v19, v8

    iget v8, v12, Landroidx/renderscript/Float2;->y:F

    move/from16 v20, v8

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move v12, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v21

    move-wide/from16 v21, v28

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CSYRK(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x6f

    if-eq v3, v2, :cond_0

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    :goto_0
    move/from16 v23, v2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v38

    .line 7
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 8
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    if-eqz v38, :cond_1

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    :cond_1
    move-wide/from16 v26, v4

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x7f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v22

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v24, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v25, v1

    const-wide/16 v28, 0x0

    iget v1, v10, Landroidx/renderscript/Float2;->x:F

    move/from16 v30, v1

    iget v1, v10, Landroidx/renderscript/Float2;->y:F

    move/from16 v31, v1

    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v32

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v16, p2

    move/from16 v19, p1

    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CTBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-ltz p4, :cond_1

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v27, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 8
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x42

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v23, p7

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public CTBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    if-ltz p4, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x45

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Number of diagonals must be positive"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public CTPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CTPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x46

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CTRMM(IIIILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v4}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v31

    .line 5
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 6
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v31, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v5, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x81

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v17, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v18, v1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CTRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CTRSM(IIIILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v4}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v31

    .line 5
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 6
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v31, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v5, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x82

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    move/from16 v17, v2

    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    move/from16 v18, v1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public CTRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x44

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    return-void
.end method

.method public DGBMV(IIIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p11

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 2
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v12

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 5
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 8
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x38

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move/from16 v6, p1

    move-wide/from16 v14, p4

    move-wide/from16 v20, p9

    move/from16 v24, p8

    move/from16 v25, p12

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void

    .line 12
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "KL and KU must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DGEMM(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/4 v4, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v1, 0x6f

    move/from16 v6, p1

    if-eq v6, v1, :cond_0

    .line 4
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    .line 5
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    .line 7
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    :goto_0
    move/from16 v7, p2

    move v11, v2

    move v13, v3

    if-eq v7, v1, :cond_1

    .line 8
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    :goto_1
    move v12, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 12
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 13
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v14

    if-eqz v28, :cond_2

    .line 14
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 15
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 16
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v8

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v8

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v14

    .line 17
    :goto_2
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DGEMV(IDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p9

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    move/from16 v7, p10

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v12

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 5
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 8
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x37

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DGER(DLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    .line 1
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 2
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v12

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v1 .. v6}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 5
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v7, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v7}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v22, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v14, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSBMV(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p10

    if-ltz p2, :cond_1

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    move/from16 v6, p7

    move/from16 v7, p11

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    move-result v11

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v27, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v21, v5

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x58

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v8, p1

    move/from16 v12, p2

    move-wide/from16 v13, p3

    move-wide/from16 v19, p8

    move/from16 v23, p7

    move/from16 v24, p11

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void

    .line 10
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DSPMV(IDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p9

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    move/from16 v7, p10

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x59

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSPR(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p5

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v30

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v30, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v20, v4

    move-wide/from16 v18, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move v14, v3

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSPR2(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v22, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSYMM(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v37

    .line 6
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 7
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 8
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v37, :cond_0

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 11
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v25, v1

    move-wide/from16 v27, v3

    move-wide/from16 v31, v5

    .line 12
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v11, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v12

    const/16 v14, 0x78

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p9 .. p9}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v20

    invoke-virtual/range {p9 .. p9}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v21

    const/16 v22, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v17, p1

    move/from16 v18, p2

    move-wide/from16 v23, p3

    move-wide/from16 v29, p7

    invoke-virtual/range {v11 .. v37}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void

    .line 13
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Matrix A is not symmetric"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DSYMV(IDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p9

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p9

    move/from16 v6, p6

    move/from16 v7, p10

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x57

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSYR(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p5

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v30

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v30, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v20, v4

    move-wide/from16 v18, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move v14, v3

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSYR2(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v22, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSYR2K(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v8, p9

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    invoke-static {v3, v5, v1, v2, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v3, 0x6f

    if-eq v5, v3, :cond_0

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    :goto_0
    move v12, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    .line 8
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v9

    if-eqz v27, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    move-wide/from16 v17, v1

    move-wide v15, v3

    move-wide/from16 v21, v6

    goto :goto_1

    :cond_1
    move-wide v15, v3

    move-wide/from16 v17, v6

    move-wide/from16 v21, v9

    .line 12
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x7a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p9 .. p9}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move-wide/from16 v13, p3

    move-wide/from16 v19, p7

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DSYRK(IIDLandroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v1, 0x6f

    if-eq v2, v1, :cond_0

    .line 4
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    :goto_0
    move/from16 v21, v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v36

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v36, :cond_1

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_1
    move-wide/from16 v24, v3

    move-wide/from16 v30, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v10, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v11

    const/16 v13, 0x79

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v20

    const-wide/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v14, p2

    move/from16 v17, p1

    move-wide/from16 v22, p3

    move-wide/from16 v28, p6

    invoke-virtual/range {v10 .. v36}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DTBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-ltz p4, :cond_1

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v27

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v27, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 8
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x3a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v23, p7

    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DTBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    if-ltz p4, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Number of diagonals must be positive"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public DTPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DTPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DTRMM(IIIIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v30

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 6
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v30, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7b

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DTRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DTRSM(IIIIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v30

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 6
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v30, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7c

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public DTRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v28, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    return-void
.end method

.method public SGBMV(IIIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p9

    move/from16 v7, p10

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v12

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 5
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 8
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v20, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move/from16 v6, p1

    move/from16 v14, p4

    move/from16 v19, p8

    move/from16 v22, p7

    move/from16 v23, p10

    move/from16 v24, p2

    move/from16 v25, p3

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void

    .line 12
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "KL and KU must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SGEMM(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/4 v4, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v1, 0x6f

    move/from16 v6, p1

    if-eq v6, v1, :cond_0

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    .line 5
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    .line 7
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    :goto_0
    move/from16 v7, p2

    move v11, v2

    move v13, v3

    if-eq v7, v1, :cond_1

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    :goto_1
    move v12, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 12
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 13
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v14

    if-eqz v26, :cond_2

    .line 14
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 15
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 16
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v8

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v20, v8

    goto :goto_2

    :cond_2
    move-wide/from16 v17, v3

    move-wide/from16 v20, v14

    move-wide v15, v1

    .line 17
    :goto_2
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x71

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v14, p3

    move/from16 v19, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SGEMV(IFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v12

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 5
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 8
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v20, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p1

    move/from16 v14, p2

    move/from16 v19, p6

    move/from16 v22, p5

    move/from16 v23, p8

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SGER(FLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    .line 1
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 2
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v12

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 5
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v7, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v7}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v20, v1

    move-wide v15, v3

    move-wide/from16 v17, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x52

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v14, p1

    move/from16 v22, p3

    move/from16 v23, p5

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSBMV(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    if-ltz p2, :cond_1

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move/from16 v6, p6

    move/from16 v7, p9

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    move-result v11

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v25

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v25, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v8, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v18, p7

    move/from16 v21, p6

    move/from16 v22, p9

    invoke-virtual/range {v1 .. v25}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void

    .line 10
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SSPMV(IFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v20, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v9, p1

    move/from16 v14, p2

    move/from16 v19, p6

    move/from16 v22, p5

    move/from16 v23, p8

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSPR(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p4

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v28, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v4

    move-wide/from16 v17, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x54

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v11, p1

    move v14, v3

    move/from16 v16, p2

    move/from16 v24, p4

    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSPR2(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v20, v1

    move-wide v15, v3

    move-wide/from16 v17, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x56

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v9, p1

    move/from16 v14, p2

    move/from16 v22, p4

    move/from16 v23, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSYMM(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v35

    .line 6
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 7
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 8
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v35, :cond_0

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 11
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v24, v1

    move-wide/from16 v26, v3

    move-wide/from16 v29, v5

    .line 12
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v11, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v12

    const/16 v14, 0x72

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v20

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v21

    const/16 v22, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v23, p3

    move/from16 v28, p6

    invoke-virtual/range {v11 .. v35}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void

    .line 13
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Matrix A is not symmetric"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SSYMV(IFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p5

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v20, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v9, p1

    move/from16 v14, p2

    move/from16 v19, p6

    move/from16 v22, p5

    move/from16 v23, p8

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSYR(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p4

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v28, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v4

    move-wide/from16 v17, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x53

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v11, p1

    move v14, v3

    move/from16 v16, p2

    move/from16 v24, p4

    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSYR2(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 5
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v20, v1

    move-wide v15, v3

    move-wide/from16 v17, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v9, p1

    move/from16 v14, p2

    move/from16 v22, p4

    move/from16 v23, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSYR2K(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v8, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    invoke-static {v3, v5, v1, v2, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v3, 0x6f

    if-eq v5, v3, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    :goto_0
    move v12, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v25

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    .line 8
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v9

    if-eqz v25, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    move-wide/from16 v16, v1

    move-wide v14, v3

    move-wide/from16 v19, v6

    goto :goto_1

    :cond_1
    move-wide v14, v3

    move-wide/from16 v16, v6

    move-wide/from16 v19, v9

    .line 12
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x74

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v13, p3

    move/from16 v18, p6

    invoke-virtual/range {v1 .. v25}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public SSYRK(IIFLandroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v1, 0x6f

    if-eq v2, v1, :cond_0

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    :goto_0
    move/from16 v21, v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v34

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v34, :cond_1

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_1
    move-wide/from16 v23, v3

    move-wide/from16 v28, v5

    .line 11
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v10, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v11

    const/16 v13, 0x73

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v20

    const-wide/16 v25, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v14, p2

    move/from16 v17, p1

    move/from16 v22, p3

    move/from16 v27, p5

    invoke-virtual/range {v10 .. v34}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public STBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-ltz p4, :cond_1

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v25

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v25, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v14, v1

    move-wide/from16 v16, v3

    .line 8
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v21, p7

    invoke-virtual/range {v1 .. v25}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public STBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    if-ltz p4, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x35

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v22, p7

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Number of diagonals must be positive"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public STPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v26, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v22, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public STPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v26, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x36

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v22, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public STRMM(IIIIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 6
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x75

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v16, p5

    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public STRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x31

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v22, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public STRSM(IIIIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v28

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 6
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    if-eqz v28, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    :cond_0
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 9
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x76

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v16, p5

    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public STRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v26

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v26, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide v15, v1

    move-wide/from16 v17, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v22, p6

    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    return-void
.end method

.method public ZGBMV(IIILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v21

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v22

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v42, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v36, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x48

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    move/from16 v16, p1

    move/from16 v38, p7

    move/from16 v39, p10

    move/from16 v40, p2

    move/from16 v41, p3

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void

    .line 12
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "KL and KU must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ZGEMM(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x6f

    if-eq v3, v2, :cond_0

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getX()I

    move-result v4

    .line 5
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    move-result v5

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getY()I

    move-result v4

    .line 7
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getX()I

    move-result v5

    :goto_0
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v4, p2

    if-eq v4, v2, :cond_1

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    :goto_1
    move/from16 v22, v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v7

    .line 13
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    if-eqz v42, :cond_2

    .line 14
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    .line 15
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v7

    .line 16
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v9

    move-wide/from16 v28, v5

    move-wide/from16 v30, v7

    move-wide/from16 v36, v9

    goto :goto_2

    :cond_2
    move-wide/from16 v28, v5

    move-wide/from16 v30, v7

    move-wide/from16 v36, v13

    .line 17
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x83

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-wide v5, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v5

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v16, p1

    move/from16 v17, p2

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZGEMV(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v21

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v22

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v42, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v36, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x47

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v16, p1

    move/from16 v38, p5

    move/from16 v39, p8

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZGERC(Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 2
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v13

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v33

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v33, :cond_0

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v27, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x6c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    move-wide v15, v6

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v17, v1

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v29, p3

    move/from16 v30, p5

    const/16 v6, 0x6c

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZGERU(Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 2
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v13

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v33

    .line 5
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 6
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v33, :cond_0

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v27, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x6b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    move-wide v15, v6

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v17, v1

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v29, p3

    move/from16 v30, p5

    const/16 v6, 0x6b

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHBMV(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v22

    if-ltz p2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v42, :cond_0

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v36, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x69

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v19, p1

    move/from16 v23, p2

    move/from16 v38, p6

    move/from16 v39, p9

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void

    .line 10
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be 0 or greater for HBMV"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ZHEMM(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v6}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v6

    move/from16 v13, p1

    invoke-static {v6, v13, v2, v3, v5}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v37

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    .line 5
    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    .line 6
    iget-object v10, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v5, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v10

    if-eqz v37, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    .line 8
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 9
    invoke-virtual {v0, v5}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v8

    move-wide/from16 v25, v2

    move-wide/from16 v23, v6

    move-wide/from16 v31, v8

    goto :goto_0

    :cond_0
    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    move-wide/from16 v31, v10

    .line 10
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v7, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    const/16 v10, 0x8c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v16

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v17

    const/16 v18, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v19, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v21, v1

    iget-wide v1, v4, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v27, v1

    iget-wide v1, v4, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v29, v1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-virtual/range {v7 .. v37}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHEMV(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v22

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v42, :cond_0

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v36, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x68

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v19, p1

    move/from16 v38, p5

    move/from16 v39, p8

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHER(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p5

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v34

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v34, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v20, v1

    move-wide/from16 v28, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v28, v4

    move-wide/from16 v20, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move v14, v3

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v34}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHER2(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v13

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v33

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v33, :cond_0

    .line 6
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v27, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x6f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    move-wide v15, v6

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v17, v1

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v10, p1

    move/from16 v29, p4

    move/from16 v30, p6

    const/16 v6, 0x6f

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHER2K(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v12, p4

    move-object/from16 v1, p5

    move-object/from16 v11, p8

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-static {v2, v5, v12, v1, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x6f

    if-ne v5, v2, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    :goto_0
    move/from16 v19, v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v31

    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 7
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 8
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v31, :cond_1

    .line 9
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 10
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    move-wide/from16 v20, v1

    move-wide/from16 v25, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v20, v2

    move-wide/from16 v25, v6

    .line 12
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x8e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    iget-wide v13, v8, Landroidx/renderscript/Double2;->x:D

    iget-wide v4, v8, Landroidx/renderscript/Double2;->y:D

    move-wide v15, v4

    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v17

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v12, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, p6

    const/16 v4, 0x8e

    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHERK(IIDLandroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p5

    move-object/from16 v8, p8

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-static {v2, v5, v1, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x71

    if-ne v5, v2, :cond_0

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    :goto_0
    move v12, v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v31

    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 7
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v31, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    move-wide/from16 v17, v1

    move-wide/from16 v25, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v2

    move-wide/from16 v25, v6

    .line 10
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x8d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move-wide/from16 v13, p3

    move-wide/from16 v21, p6

    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHPMV(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v22

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v42, :cond_0

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v36, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x6a

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v19, p1

    move/from16 v38, p5

    move/from16 v39, p8

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHPR(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 1
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v14, p5

    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v34

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 4
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v34, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 6
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    move-wide/from16 v20, v1

    move-wide/from16 v28, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v28, v4

    move-wide/from16 v20, v6

    .line 7
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v4, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move v14, v3

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v34}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZHPR2(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    move-result v13

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v33

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 4
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v33, :cond_0

    .line 6
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v27, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x70

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    move-wide v15, v6

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v17, v1

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v10, p1

    move/from16 v29, p4

    move/from16 v30, p6

    const/16 v6, 0x70

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZSYMM(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v43

    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    .line 7
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 8
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v43, :cond_0

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 11
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v29, v2

    move-wide/from16 v31, v4

    move-wide/from16 v37, v6

    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v13, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v14

    const/16 v16, 0x84

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v22

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v23

    const/16 v24, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v25, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v27, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v33, v1

    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v35, v1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-virtual/range {v13 .. v43}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void

    .line 13
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Matrix A is not symmetric"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ZSYR2K(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v3}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v3

    invoke-static {v3, v5, v1, v2, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v3, 0x6f

    if-eq v5, v3, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    :goto_0
    move/from16 v17, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v31

    .line 6
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    .line 7
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    .line 8
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v9

    if-eqz v31, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 11
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    move-wide/from16 v25, v1

    move-wide/from16 v18, v3

    move-wide/from16 v32, v6

    goto :goto_1

    :cond_1
    move-wide/from16 v18, v3

    move-wide/from16 v25, v6

    move-wide/from16 v32, v9

    .line 12
    :goto_1
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x86

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    move-result v11

    iget-wide v13, v8, Landroidx/renderscript/Double2;->x:D

    iget-wide v4, v8, Landroidx/renderscript/Double2;->y:D

    move-wide v15, v4

    iget-wide v4, v12, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v21, v4

    iget-wide v4, v12, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v23, v4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v12, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v25

    move-wide/from16 v25, v32

    const/16 v4, 0x86

    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZSYRK(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    const/16 v2, 0x6f

    if-eq v3, v2, :cond_0

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    :goto_0
    move/from16 v23, v2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v42

    .line 7
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 8
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    if-eqz v42, :cond_1

    .line 9
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    :cond_1
    move-wide/from16 v28, v4

    .line 11
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v12, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    const/16 v15, 0x85

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v22

    iget-wide v4, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v24, v4

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v26, v1

    const-wide/16 v30, 0x0

    iget-wide v1, v10, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v32, v1

    iget-wide v1, v10, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v34, v1

    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v11, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v36

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v16, p2

    move/from16 v19, p1

    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZTBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-ltz p4, :cond_1

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v11

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v31

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v31, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .line 8
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    const/16 v4, 0x4a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v27, p7

    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "K must be greater than or equal to 0"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ZTBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    if-ltz p4, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v32

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v32, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v28, p7

    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void

    .line 9
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    const-string v2, "Number of diagonals must be positive"

    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ZTPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v32

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v32, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZTPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    move-result v12

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v32

    .line 3
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v32, :cond_0

    .line 5
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    .line 7
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZTRMM(IIIILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v4}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v35

    .line 5
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 6
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v35, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v5, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x87

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v17, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v19, v1

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v35}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZTRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v32

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v32, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x49

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZTRSM(IIIILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 1
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v4}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v35

    .line 5
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    .line 6
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    if-eqz v35, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v4

    .line 8
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v6

    :cond_0
    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    .line 9
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v5, v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x88

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    move-wide/from16 v17, v2

    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    move-wide/from16 v19, v1

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v35}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method

.method public ZTRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v12

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    move-result v32

    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    if-eqz v32, :cond_0

    .line 6
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v3

    :cond_0
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v2, v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    return-void
.end method
