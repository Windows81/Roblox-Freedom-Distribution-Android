.class final Ld/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;


# instance fields
.field final c:Lb/e$a;

.field final d:Ld/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/c",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lb/s;

.field private final f:Ld/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e",
            "<",
            "Lb/ac;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lb/r;

.field private final j:Lb/u;

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:[Ld/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ld/i",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/n;->a:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/n;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ld/n$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/n$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p1, Ld/n$a;->a:Ld/m;

    invoke-virtual {v0}, Ld/m;->a()Lb/e$a;

    move-result-object v0

    iput-object v0, p0, Ld/n;->c:Lb/e$a;

    .line 81
    iget-object v0, p1, Ld/n$a;->w:Ld/c;

    iput-object v0, p0, Ld/n;->d:Ld/c;

    .line 82
    iget-object v0, p1, Ld/n$a;->a:Ld/m;

    invoke-virtual {v0}, Ld/m;->b()Lb/s;

    move-result-object v0

    iput-object v0, p0, Ld/n;->e:Lb/s;

    .line 83
    iget-object v0, p1, Ld/n$a;->v:Ld/e;

    iput-object v0, p0, Ld/n;->f:Ld/e;

    .line 84
    iget-object v0, p1, Ld/n$a;->m:Ljava/lang/String;

    iput-object v0, p0, Ld/n;->g:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Ld/n$a;->q:Ljava/lang/String;

    iput-object v0, p0, Ld/n;->h:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Ld/n$a;->r:Lb/r;

    iput-object v0, p0, Ld/n;->i:Lb/r;

    .line 87
    iget-object v0, p1, Ld/n$a;->s:Lb/u;

    iput-object v0, p0, Ld/n;->j:Lb/u;

    .line 88
    iget-boolean v0, p1, Ld/n$a;->n:Z

    iput-boolean v0, p0, Ld/n;->k:Z

    .line 89
    iget-boolean v0, p1, Ld/n$a;->o:Z

    iput-boolean v0, p0, Ld/n;->l:Z

    .line 90
    iget-boolean v0, p1, Ld/n$a;->p:Z

    iput-boolean v0, p0, Ld/n;->m:Z

    .line 91
    iget-object v0, p1, Ld/n$a;->u:[Ld/i;

    iput-object v0, p0, Ld/n;->n:[Ld/i;

    .line 92
    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 747
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    .line 755
    :cond_0
    :goto_0
    return-object p0

    .line 748
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 749
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 750
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 751
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 752
    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 753
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 754
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Short;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    sget-object v0, Ld/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 739
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 740
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :cond_0
    return-object v1
.end method


# virtual methods
.method varargs a([Ljava/lang/Object;)Lb/z;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 96
    new-instance v0, Ld/k;

    iget-object v1, p0, Ld/n;->g:Ljava/lang/String;

    iget-object v2, p0, Ld/n;->e:Lb/s;

    iget-object v3, p0, Ld/n;->h:Ljava/lang/String;

    iget-object v4, p0, Ld/n;->i:Lb/r;

    iget-object v5, p0, Ld/n;->j:Lb/u;

    iget-boolean v6, p0, Ld/n;->k:Z

    iget-boolean v7, p0, Ld/n;->l:Z

    iget-boolean v8, p0, Ld/n;->m:Z

    invoke-direct/range {v0 .. v8}, Ld/k;-><init>(Ljava/lang/String;Lb/s;Ljava/lang/String;Lb/r;Lb/u;ZZZ)V

    .line 100
    iget-object v1, p0, Ld/n;->n:[Ld/i;

    check-cast v1, [Ld/i;

    .line 102
    if-eqz p1, :cond_0

    array-length v2, p1

    .line 103
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") doesn\'t match expected count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v9

    .line 102
    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    if-ge v9, v2, :cond_2

    .line 109
    aget-object v3, v1, v9

    aget-object v4, p1, v9

    invoke-virtual {v3, v0, v4}, Ld/i;->a(Ld/k;Ljava/lang/Object;)V

    .line 108
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v0}, Ld/k;->a()Lb/z;

    move-result-object v0

    return-object v0
.end method

.method a(Lb/ac;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/ac;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Ld/n;->f:Ld/e;

    invoke-interface {v0, p1}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
