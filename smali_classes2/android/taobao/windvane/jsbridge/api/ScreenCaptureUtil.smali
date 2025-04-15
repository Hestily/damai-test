.class public final Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil$BackFragment;
    }
.end annotation


# static fields
.field private static final IMAGE_SAVE_REQUEST_CODE:I = 0x611


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->notifyNewMedia(Landroid/net/Uri;Landroid/content/Context;)V

    return-void
.end method

.method public static capture(Landroid/view/View;ZJJJZ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/taobao/windvane/jsbridge/api/ScreenCaptureUtil;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 3
    invoke-static {p2, p4, p5, p6, p7}, Landroid/taobao/windvane/util/ImageTool;->zoomBitmap(Landroid/graphics/Bitmap;JJ)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 4
    :goto_0
    invoke-static {p3}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->saveBitmapToCache(Landroid/graphics/Bitmap;)J

    move-result-wide p3

    if-nez p1, :cond_1

    return-wide p3

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    invoke-static {p0, p2}, Landroid/taobao/windvane/util/ImageTool;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    return-wide p3

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can\'t get bitmap from the view"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static captureByActivty(Landroid/app/Activity;ZJJJZ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 4
    invoke-static {p2, p4, p5, p6, p7}, Landroid/taobao/windvane/util/ImageTool;->zoomBitmap(Landroid/graphics/Bitmap;JJ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->saveBitmapToCache(Landroid/graphics/Bitmap;)J

    move-result-wide p3

    if-nez p1, :cond_1

    return-wide p3

    .line 6
    :cond_1
    invoke-static {p0, p2}, Landroid/taobao/windvane/util/ImageTool;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    return-wide p3

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can\'t get bitmap from the view"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateFileName()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOUTAO_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static notifyNewMedia(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "w"

    .line 2
    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p0, v0

    .line 7
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    if-eqz p0, :cond_1

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 14
    :cond_3
    throw p1
.end method
