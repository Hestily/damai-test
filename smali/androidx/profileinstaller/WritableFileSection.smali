.class Landroidx/profileinstaller/WritableFileSection;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field final mContents:[B

.field final mExpectedInflateSize:I

.field final mNeedsCompression:Z

.field final mType:Landroidx/profileinstaller/FileSectionType;


# direct methods
.method constructor <init>(Landroidx/profileinstaller/FileSectionType;I[BZ)V
    .locals 0
    .param p1    # Landroidx/profileinstaller/FileSectionType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/profileinstaller/WritableFileSection;->mType:Landroidx/profileinstaller/FileSectionType;

    .line 3
    iput p2, p0, Landroidx/profileinstaller/WritableFileSection;->mExpectedInflateSize:I

    .line 4
    iput-object p3, p0, Landroidx/profileinstaller/WritableFileSection;->mContents:[B

    .line 5
    iput-boolean p4, p0, Landroidx/profileinstaller/WritableFileSection;->mNeedsCompression:Z

    return-void
.end method
