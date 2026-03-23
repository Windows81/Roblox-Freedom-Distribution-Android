.class public final Lcom/google/c/b/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/ag$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/c/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3599
    sget-object v0, Lcom/google/c/b/q;->a:Lcom/google/c/a/c;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/c/a/c;->c(Ljava/lang/String;)Lcom/google/c/a/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/ag;->a:Lcom/google/c/a/c$a;

    return-void
.end method

.method static a()Lcom/google/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/a/b",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/google/c/b/ag$a;->b:Lcom/google/c/b/ag$a;

    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3605
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/b/q;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3606
    sget-object v1, Lcom/google/c/b/ag;->a:Lcom/google/c/a/c$a;

    invoke-virtual {v1, v0, p0}, Lcom/google/c/a/c$a;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 3607
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1295
    new-instance v0, Lcom/google/c/b/w;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3590
    if-ne p0, p1, :cond_0

    .line 3591
    const/4 v0, 0x1

    .line 3596
    :goto_0
    return v0

    .line 3592
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3593
    check-cast p1, Ljava/util/Map;

    .line 3594
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3596
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
