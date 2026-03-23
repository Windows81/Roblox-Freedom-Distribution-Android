.class public final Lc/q;
.super Lc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/q$a;
    }
.end annotation


# static fields
.field private static final a:Lc/v;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    .line 30
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    sput-object v0, Lc/q;->a:Lc/v;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lc/ab;-><init>()V

    .line 36
    invoke-static {p1}, Lc/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/q;->b:Ljava/util/List;

    .line 37
    invoke-static {p2}, Lc/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/q;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lc/q$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lc/q;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ld/d;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 84
    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1}, Ld/d;->c()Ld/c;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lc/q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 90
    invoke-virtual {p1, v2}, Ld/c;->b(I)Ld/c;

    .line 91
    :cond_1
    iget-object v2, p0, Lc/q;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ld/c;->a(Ljava/lang/String;)Ld/c;

    const/16 v2, 0x3d

    .line 92
    invoke-virtual {p1, v2}, Ld/c;->b(I)Ld/c;

    .line 93
    iget-object v2, p0, Lc/q;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ld/c;->a(Ljava/lang/String;)Ld/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 97
    invoke-virtual {p1}, Ld/c;->b()J

    move-result-wide v0

    .line 98
    invoke-virtual {p1}, Ld/c;->t()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method


# virtual methods
.method public a()Lc/v;
    .locals 1

    .line 62
    sget-object v0, Lc/q;->a:Lc/v;

    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lc/q;->a(Ld/d;Z)J

    return-void
.end method

.method public b()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0, v0, v1}, Lc/q;->a(Ld/d;Z)J

    move-result-wide v0

    return-wide v0
.end method
