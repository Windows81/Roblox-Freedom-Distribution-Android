.class public Lcom/google/ads/interactivemedia/v3/impl/v;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 36
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    .line 37
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p0}, Lcom/google/ads/interactivemedia/v3/impl/v;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/v;)Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->companionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/v;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/v;->b()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/v$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/v$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/v$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->clickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->d(Ljava/lang/String;)V

    .line 87
    return-void
.end method
