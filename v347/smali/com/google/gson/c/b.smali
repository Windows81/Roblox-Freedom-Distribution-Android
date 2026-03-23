.class public final enum Lcom/google/gson/c/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/gson/c/b;

.field public static final enum b:Lcom/google/gson/c/b;

.field public static final enum c:Lcom/google/gson/c/b;

.field public static final enum d:Lcom/google/gson/c/b;

.field public static final enum e:Lcom/google/gson/c/b;

.field public static final enum f:Lcom/google/gson/c/b;

.field public static final enum g:Lcom/google/gson/c/b;

.field public static final enum h:Lcom/google/gson/c/b;

.field public static final enum i:Lcom/google/gson/c/b;

.field public static final enum j:Lcom/google/gson/c/b;

.field private static final synthetic k:[Lcom/google/gson/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->a:Lcom/google/gson/c/b;

    .line 37
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->b:Lcom/google/gson/c/b;

    .line 43
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->c:Lcom/google/gson/c/b;

    .line 49
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->d:Lcom/google/gson/c/b;

    .line 56
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->e:Lcom/google/gson/c/b;

    .line 61
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->f:Lcom/google/gson/c/b;

    .line 67
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->g:Lcom/google/gson/c/b;

    .line 72
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->h:Lcom/google/gson/c/b;

    .line 77
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->i:Lcom/google/gson/c/b;

    .line 84
    new-instance v0, Lcom/google/gson/c/b;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/gson/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/c/b;->j:Lcom/google/gson/c/b;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/gson/c/b;

    sget-object v1, Lcom/google/gson/c/b;->a:Lcom/google/gson/c/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gson/c/b;->b:Lcom/google/gson/c/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gson/c/b;->c:Lcom/google/gson/c/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gson/c/b;->d:Lcom/google/gson/c/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gson/c/b;->e:Lcom/google/gson/c/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gson/c/b;->f:Lcom/google/gson/c/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gson/c/b;->g:Lcom/google/gson/c/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gson/c/b;->h:Lcom/google/gson/c/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gson/c/b;->i:Lcom/google/gson/c/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gson/c/b;->j:Lcom/google/gson/c/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/c/b;->k:[Lcom/google/gson/c/b;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/c/b;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/gson/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/c/b;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/c/b;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/gson/c/b;->k:[Lcom/google/gson/c/b;

    invoke-virtual {v0}, [Lcom/google/gson/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/c/b;

    return-object v0
.end method
