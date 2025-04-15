.class public Landroid/taobao/windvane/util/WVConstants;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ALLOW_SSL_DOMAIN_PATTERN:Ljava/lang/String; = "https?:\\/\\/.*(g|img|gw)\\.alicdn\\.com\\/.*"

.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final DEFAULT_CACHE_CAPACITY:I = 0xfa

.field public static final DEFAULT_DOMAIN_PATTERN:Ljava/lang/String; = "^https?:\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|taobao\\.net|tdd\\.la|yao\\.95095\\.com|tmall\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?|go(/.*)?)$"

.field public static final DEFAULT_IMAGE_CACHE_CAPACITY:I = 0x12c

.field public static final DEFAULT_PATTERN:Ljava/lang/String; = ""

.field public static final DEFAULT_UC_PARAM:Ljava/lang/String; = "skip_old_extra_kernel=true"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTML_CONTENT:Ljava/lang/String; = "html_content"

.field public static final HTTPSVERIFYERROR:Ljava/lang/String; = "httpsverifyerror"

.field public static final IMAGE_CACHE_FOLDER:Ljava/lang/String; = "wvimage"

.field public static final INTENT_EXTRA_DATA:Ljava/lang/String; = "DATA"

.field public static final INTENT_EXTRA_PARAMS:Ljava/lang/String; = "PARAMS"

.field public static final INTENT_EXTRA_URL:Ljava/lang/String; = "URL"

.field public static final LOCAL_CACHE_TAG:Ljava/lang/String; = "_wvcrc="

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final NOTIFY_PAGE_ERROR:I = 0x192

.field public static final NOTIFY_PAGE_FINISH:I = 0x191

.field public static final NOTIFY_PAGE_START:I = 0x190

.field public static final NOTIFY_SAVE_IMAGE_FAIL:I = 0x195

.field public static final NOTIFY_SAVE_IMAGE_SUCCESS:I = 0x194

.field public static final NOTIFY_TIME_OUT:I = 0x193

.field public static final THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String; = "^((https?:)?\\/\\/([^/\\?#]+\\.)*((5317wan|guahao|wap\\.wandafilm|wrating|alipayobjects|(hft|\\w+app)\\.evergrande|jmt\\.wxcsgd|mpay\\.cx580|mt\\.locojoy|cpa1\\.locojoy|miiee|imaijia)\\.com|(h5\\.edaijia|beta\\.library\\.sh|web\\.chelaile\\.net|app3\\.shmzj\\.gov|bsfw\\.qingdao\\.gov|www\\.hzpolice\\.gov|www\\.sxgajj\\.gov|service\\.zjzwfw\\.gov|people\\.com|hbjg\\.premier-tech)\\.cn|(aliplay|ali\\.hk515)\\.net|tmall\\.pp\\.cc)([\\?|#|/|:].*)?)$"

.field public static final UNSUPPORTED_MIMETYPE:I = -0x190

.field public static final WEBCACHE_FOLDER:Ljava/lang/String; = "wvcache"

.field public static final WEBVIEW_MIMETYPE:Ljava/lang/String; = "webview_mimetype"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
