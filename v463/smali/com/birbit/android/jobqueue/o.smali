.class public final enum Lcom/birbit/android/jobqueue/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/birbit/android/jobqueue/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/birbit/android/jobqueue/o;

.field public static final enum b:Lcom/birbit/android/jobqueue/o;

.field private static final synthetic c:[Lcom/birbit/android/jobqueue/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/birbit/android/jobqueue/o;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/birbit/android/jobqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/birbit/android/jobqueue/o;->a:Lcom/birbit/android/jobqueue/o;

    .line 8
    new-instance v0, Lcom/birbit/android/jobqueue/o;

    const-string v1, "ANY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/birbit/android/jobqueue/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/birbit/android/jobqueue/o;->b:Lcom/birbit/android/jobqueue/o;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/birbit/android/jobqueue/o;

    .line 6
    sget-object v4, Lcom/birbit/android/jobqueue/o;->a:Lcom/birbit/android/jobqueue/o;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/birbit/android/jobqueue/o;->c:[Lcom/birbit/android/jobqueue/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/birbit/android/jobqueue/o;
    .locals 1

    .line 6
    const-class v0, Lcom/birbit/android/jobqueue/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/birbit/android/jobqueue/o;

    return-object p0
.end method

.method public static values()[Lcom/birbit/android/jobqueue/o;
    .locals 1

    .line 6
    sget-object v0, Lcom/birbit/android/jobqueue/o;->c:[Lcom/birbit/android/jobqueue/o;

    invoke-virtual {v0}, [Lcom/birbit/android/jobqueue/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/birbit/android/jobqueue/o;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/birbit/android/jobqueue/o;->b:Lcom/birbit/android/jobqueue/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_2

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_1
    return v1

    .line 36
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_4
    return v2
.end method

.method public a([Ljava/lang/String;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/birbit/android/jobqueue/o;->b:Lcom/birbit/android/jobqueue/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    .line 11
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 12
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 18
    :cond_2
    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 19
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method
