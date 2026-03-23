.class Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;
.super Lcom/google/ads/interactivemedia/v3/a/b/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/b/g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/b/g$c",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/b/g$a;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/g$a;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;->a:Lcom/google/ads/interactivemedia/v3/a/b/g$a;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/g$c;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/g;Lcom/google/ads/interactivemedia/v3/a/b/g$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;->b()Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
