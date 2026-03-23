.class Lcom/google/ads/interactivemedia/v3/a/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/interactivemedia/v3/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/s",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/k",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/a/c/a;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/a/s;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/s;

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->d:Lcom/google/ads/interactivemedia/v3/a/s;

    .line 126
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/a/k;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/k;

    :goto_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->e:Lcom/google/ads/interactivemedia/v3/a/k;

    .line 129
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->d:Lcom/google/ads/interactivemedia/v3/a/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->e:Lcom/google/ads/interactivemedia/v3/a/k;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a;->a(Z)V

    .line 130
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/a;

    .line 131
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->b:Z

    .line 132
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->c:Ljava/lang/Class;

    .line 133
    return-void

    :cond_1
    move-object v0, v1

    .line 123
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 126
    goto :goto_1

    .line 129
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/a/c/a;ZLjava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/v$1;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/v$a;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/a/c/a;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/a;

    .line 138
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 140
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/v;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->d:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->e:Lcom/google/ads/interactivemedia/v3/a/k;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/a/v;-><init>(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Lcom/google/ads/interactivemedia/v3/a/x;Lcom/google/ads/interactivemedia/v3/a/v$1;)V

    :goto_1
    return-object v0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v$a;->c:Ljava/lang/Class;

    .line 139
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 140
    goto :goto_1
.end method
