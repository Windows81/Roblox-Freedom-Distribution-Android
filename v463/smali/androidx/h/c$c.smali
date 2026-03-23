.class Landroidx/h/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroidx/h/c$b;

.field private final c:[Ljava/lang/String;

.field private final d:[J

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method a([J)V
    .locals 9

    .line 498
    iget-object v0, p0, Landroidx/h/c$c;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 500
    iget-object v3, p0, Landroidx/h/c$c;->a:[I

    aget v3, v3, v2

    .line 501
    aget-wide v3, p1, v3

    .line 502
    iget-object v5, p0, Landroidx/h/c$c;->d:[J

    aget-wide v6, v5, v2

    cmp-long v8, v6, v3

    if-gez v8, :cond_2

    .line 504
    aput-wide v3, v5, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 507
    iget-object v1, p0, Landroidx/h/c$c;->e:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 510
    new-instance v1, Landroidx/c/b;

    invoke-direct {v1, v0}, Landroidx/c/b;-><init>(I)V

    .line 512
    :cond_1
    iget-object v3, p0, Landroidx/h/c$c;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 517
    iget-object p1, p0, Landroidx/h/c$c;->b:Landroidx/h/c$b;

    invoke-virtual {p1, v1}, Landroidx/h/c$b;->a(Ljava/util/Set;)V

    :cond_4
    return-void
.end method
