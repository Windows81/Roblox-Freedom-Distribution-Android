.class public final enum Lorg/a/d/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/a/d/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/a/d/d$a;

.field public static final enum b:Lorg/a/d/d$a;

.field public static final enum c:Lorg/a/d/d$a;

.field public static final enum d:Lorg/a/d/d$a;

.field public static final enum e:Lorg/a/d/d$a;

.field public static final enum f:Lorg/a/d/d$a;

.field private static final synthetic g:[Lorg/a/d/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lorg/a/d/d$a;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3}, Lorg/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/d/d$a;->a:Lorg/a/d/d$a;

    new-instance v0, Lorg/a/d/d$a;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lorg/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    new-instance v0, Lorg/a/d/d$a;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v5}, Lorg/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/d/d$a;->c:Lorg/a/d/d$a;

    new-instance v0, Lorg/a/d/d$a;

    const-string v1, "PING"

    invoke-direct {v0, v1, v6}, Lorg/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/d/d$a;->d:Lorg/a/d/d$a;

    new-instance v0, Lorg/a/d/d$a;

    const-string v1, "PONG"

    invoke-direct {v0, v1, v7}, Lorg/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    new-instance v0, Lorg/a/d/d$a;

    const-string v1, "CLOSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/a/d/d$a;

    sget-object v1, Lorg/a/d/d$a;->a:Lorg/a/d/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/a/d/d$a;->c:Lorg/a/d/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lorg/a/d/d$a;->d:Lorg/a/d/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/a/d/d$a;->f:Lorg/a/d/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lorg/a/d/d$a;->g:[Lorg/a/d/d$a;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/a/d/d$a;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lorg/a/d/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/a/d/d$a;

    return-object v0
.end method

.method public static values()[Lorg/a/d/d$a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/a/d/d$a;->g:[Lorg/a/d/d$a;

    invoke-virtual {v0}, [Lorg/a/d/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/d/d$a;

    return-object v0
.end method
