.class public final enum Lcom/b/a/a/g/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/a/g/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/a/g/i;

.field public static final enum b:Lcom/b/a/a/g/i;

.field public static final enum c:Lcom/b/a/a/g/i;

.field public static final enum d:Lcom/b/a/a/g/i;

.field public static final enum e:Lcom/b/a/a/g/i;

.field public static final enum f:Lcom/b/a/a/g/i;

.field public static final enum g:Lcom/b/a/a/g/i;

.field public static final enum h:Lcom/b/a/a/g/i;

.field public static final enum i:Lcom/b/a/a/g/i;

.field public static final enum j:Lcom/b/a/a/g/i;

.field public static final enum k:Lcom/b/a/a/g/i;

.field static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/g/b;",
            ">;",
            "Lcom/b/a/a/g/i;",
            ">;"
        }
    .end annotation
.end field

.field static final o:I

.field private static final synthetic p:[Lcom/b/a/a/g/i;


# instance fields
.field final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/g/b;",
            ">;"
        }
    .end annotation
.end field

.field final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 22
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "CALLBACK"

    const-class v3, Lcom/b/a/a/g/a/b;

    invoke-direct {v1, v2, v0, v3, v0}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->a:Lcom/b/a/a/g/i;

    .line 23
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "CANCEL_RESULT_CALLBACK"

    const-class v3, Lcom/b/a/a/g/a/d;

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->b:Lcom/b/a/a/g/i;

    .line 24
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "RUN_JOB"

    const-class v3, Lcom/b/a/a/g/a/i;

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->c:Lcom/b/a/a/g/i;

    .line 25
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "COMMAND"

    const-class v3, Lcom/b/a/a/g/a/e;

    invoke-direct {v1, v2, v7, v3, v0}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->d:Lcom/b/a/a/g/i;

    .line 26
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "PUBLIC_QUERY"

    const-class v3, Lcom/b/a/a/g/a/h;

    invoke-direct {v1, v2, v8, v3, v0}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->e:Lcom/b/a/a/g/i;

    .line 27
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "JOB_CONSUMER_IDLE"

    const/4 v3, 0x5

    const-class v4, Lcom/b/a/a/g/a/g;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->f:Lcom/b/a/a/g/i;

    .line 28
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "ADD_JOB"

    const/4 v3, 0x6

    const-class v4, Lcom/b/a/a/g/a/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->g:Lcom/b/a/a/g/i;

    .line 29
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "CANCEL"

    const/4 v3, 0x7

    const-class v4, Lcom/b/a/a/g/a/c;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->h:Lcom/b/a/a/g/i;

    .line 30
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "CONSTRAINT_CHANGE"

    const/16 v3, 0x8

    const-class v4, Lcom/b/a/a/g/a/f;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->i:Lcom/b/a/a/g/i;

    .line 31
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "RUN_JOB_RESULT"

    const/16 v3, 0x9

    const-class v4, Lcom/b/a/a/g/a/j;

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->j:Lcom/b/a/a/g/i;

    .line 32
    new-instance v1, Lcom/b/a/a/g/i;

    const-string v2, "SCHEDULER"

    const/16 v3, 0xa

    const-class v4, Lcom/b/a/a/g/a/k;

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/b/a/a/g/i;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v1, Lcom/b/a/a/g/i;->k:Lcom/b/a/a/g/i;

    .line 21
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/b/a/a/g/i;

    sget-object v2, Lcom/b/a/a/g/i;->a:Lcom/b/a/a/g/i;

    aput-object v2, v1, v0

    sget-object v2, Lcom/b/a/a/g/i;->b:Lcom/b/a/a/g/i;

    aput-object v2, v1, v5

    sget-object v2, Lcom/b/a/a/g/i;->c:Lcom/b/a/a/g/i;

    aput-object v2, v1, v6

    sget-object v2, Lcom/b/a/a/g/i;->d:Lcom/b/a/a/g/i;

    aput-object v2, v1, v7

    sget-object v2, Lcom/b/a/a/g/i;->e:Lcom/b/a/a/g/i;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/b/a/a/g/i;->f:Lcom/b/a/a/g/i;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/b/a/a/g/i;->g:Lcom/b/a/a/g/i;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/b/a/a/g/i;->h:Lcom/b/a/a/g/i;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/b/a/a/g/i;->i:Lcom/b/a/a/g/i;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/b/a/a/g/i;->j:Lcom/b/a/a/g/i;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/b/a/a/g/i;->k:Lcom/b/a/a/g/i;

    aput-object v3, v1, v2

    sput-object v1, Lcom/b/a/a/g/i;->p:[Lcom/b/a/a/g/i;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/b/a/a/g/i;->m:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/b/a/a/g/i;->values()[Lcom/b/a/a/g/i;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 46
    sget-object v5, Lcom/b/a/a/g/i;->m:Ljava/util/Map;

    iget-object v6, v4, Lcom/b/a/a/g/i;->l:Ljava/lang/Class;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget v5, v4, Lcom/b/a/a/g/i;->n:I

    if-le v5, v0, :cond_0

    .line 48
    iget v0, v4, Lcom/b/a/a/g/i;->n:I

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sput v0, Lcom/b/a/a/g/i;->o:I

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/g/b;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/b/a/a/g/i;->l:Ljava/lang/Class;

    .line 40
    iput p4, p0, Lcom/b/a/a/g/i;->n:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/g/i;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/b/a/a/g/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/i;

    return-object v0
.end method

.method public static values()[Lcom/b/a/a/g/i;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/b/a/a/g/i;->p:[Lcom/b/a/a/g/i;

    invoke-virtual {v0}, [Lcom/b/a/a/g/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/g/i;

    return-object v0
.end method
