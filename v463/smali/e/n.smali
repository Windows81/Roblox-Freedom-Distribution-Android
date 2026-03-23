.class final Le/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/n$a;
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
.field final c:Lc/e$a;

.field final d:Le/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lc/t;

.field private final f:Le/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/e<",
            "Lc/ad;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lc/s;

.field private final j:Lc/v;

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:[Le/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Le/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/n;->a:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/n;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Le/n$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/n$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p1, Le/n$a;->a:Le/m;

    invoke-virtual {v0}, Le/m;->a()Lc/e$a;

    move-result-object v0

    iput-object v0, p0, Le/n;->c:Lc/e$a;

    .line 81
    iget-object v0, p1, Le/n$a;->w:Le/c;

    iput-object v0, p0, Le/n;->d:Le/c;

    .line 82
    iget-object v0, p1, Le/n$a;->a:Le/m;

    invoke-virtual {v0}, Le/m;->b()Lc/t;

    move-result-object v0

    iput-object v0, p0, Le/n;->e:Lc/t;

    .line 83
    iget-object v0, p1, Le/n$a;->v:Le/e;

    iput-object v0, p0, Le/n;->f:Le/e;

    .line 84
    iget-object v0, p1, Le/n$a;->m:Ljava/lang/String;

    iput-object v0, p0, Le/n;->g:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Le/n$a;->q:Ljava/lang/String;

    iput-object v0, p0, Le/n;->h:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Le/n$a;->r:Lc/s;

    iput-object v0, p0, Le/n;->i:Lc/s;

    .line 87
    iget-object v0, p1, Le/n$a;->s:Lc/v;

    iput-object v0, p0, Le/n;->j:Lc/v;

    .line 88
    iget-boolean v0, p1, Le/n$a;->n:Z

    iput-boolean v0, p0, Le/n;->k:Z

    .line 89
    iget-boolean v0, p1, Le/n$a;->o:Z

    iput-boolean v0, p0, Le/n;->l:Z

    .line 90
    iget-boolean v0, p1, Le/n$a;->p:Z

    iput-boolean v0, p0, Le/n;->m:Z

    .line 91
    iget-object p1, p1, Le/n$a;->u:[Le/i;

    iput-object p1, p0, Le/n;->n:[Le/i;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 747
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 748
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 749
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 750
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 751
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 752
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 753
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 754
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    sget-object v0, Le/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 739
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 740
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 741
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method varargs a([Ljava/lang/Object;)Lc/aa;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v9, Le/k;

    iget-object v1, p0, Le/n;->g:Ljava/lang/String;

    iget-object v2, p0, Le/n;->e:Lc/t;

    iget-object v3, p0, Le/n;->h:Ljava/lang/String;

    iget-object v4, p0, Le/n;->i:Lc/s;

    iget-object v5, p0, Le/n;->j:Lc/v;

    iget-boolean v6, p0, Le/n;->k:Z

    iget-boolean v7, p0, Le/n;->l:Z

    iget-boolean v8, p0, Le/n;->m:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/k;-><init>(Ljava/lang/String;Lc/t;Ljava/lang/String;Lc/s;Lc/v;ZZZ)V

    .line 100
    iget-object v0, p0, Le/n;->n:[Le/i;

    check-cast v0, [Le/i;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 102
    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 103
    :goto_0
    array-length v3, v0

    if-ne v2, v3, :cond_2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 109
    aget-object v3, v0, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v9, v4}, Le/i;->a(Le/k;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v9}, Le/k;->a()Lc/aa;

    move-result-object p1

    return-object p1

    .line 104
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t match expected count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method a(Lc/ad;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/ad;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Le/n;->f:Le/e;

    invoke-interface {v0, p1}, Le/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
