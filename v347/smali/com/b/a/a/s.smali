.class public final enum Lcom/b/a/a/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/a/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/a/s;

.field public static final enum b:Lcom/b/a/a/s;

.field private static final synthetic c:[Lcom/b/a/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/b/a/a/s;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/s;->a:Lcom/b/a/a/s;

    .line 8
    new-instance v0, Lcom/b/a/a/s;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v3}, Lcom/b/a/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/b/a/a/s;

    sget-object v1, Lcom/b/a/a/s;->a:Lcom/b/a/a/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    aput-object v1, v0, v3

    sput-object v0, Lcom/b/a/a/s;->c:[Lcom/b/a/a/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/s;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/b/a/a/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/s;

    return-object v0
.end method

.method public static values()[Lcom/b/a/a/s;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/b/a/a/s;->c:[Lcom/b/a/a/s;

    invoke-virtual {v0}, [Lcom/b/a/a/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/s;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    sget-object v0, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    if-ne p0, v0, :cond_2

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 41
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 38
    goto :goto_0

    :cond_4
    move v0, v1

    .line 41
    goto :goto_0
.end method

.method public a([Ljava/lang/String;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    sget-object v2, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    if-ne p0, v2, :cond_3

    .line 11
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 12
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    :cond_0
    :goto_1
    return v0

    .line 11
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 16
    goto :goto_1

    .line 18
    :cond_3
    array-length v3, p1

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 19
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 20
    goto :goto_1

    .line 18
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
