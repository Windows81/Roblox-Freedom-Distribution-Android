.class Lcom/google/ads/interactivemedia/v3/impl/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/j;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/j;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/j;Lcom/google/ads/interactivemedia/v3/impl/j$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/j$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/j;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->b(Lcom/google/ads/interactivemedia/v3/impl/j;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->skip:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/j;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 120
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->b(Lcom/google/ads/interactivemedia/v3/impl/j;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->skipShown:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    .line 125
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/j;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 126
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/j;->b(Lcom/google/ads/interactivemedia/v3/impl/j;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->click:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/j$a;->a:Lcom/google/ads/interactivemedia/v3/impl/j;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/j;->a(Lcom/google/ads/interactivemedia/v3/impl/j;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 131
    return-void
.end method
