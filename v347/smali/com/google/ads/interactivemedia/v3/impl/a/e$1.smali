.class Lcom/google/ads/interactivemedia/v3/impl/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/a/e;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/a/e;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/a/e;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e$1;->a:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/e$1;->a:Lcom/google/ads/interactivemedia/v3/impl/a/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e;->a(Lcom/google/ads/interactivemedia/v3/impl/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;

    .line 168
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/a/e$a;->c()V

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method
