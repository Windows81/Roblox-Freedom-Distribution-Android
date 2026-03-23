.class public final enum Lorg/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/a/a$a;

.field public static final enum b:Lorg/a/a$a;

.field public static final enum c:Lorg/a/a$a;

.field public static final enum d:Lorg/a/a$a;

.field public static final enum e:Lorg/a/a$a;

.field private static final synthetic f:[Lorg/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lorg/a/a$a;

    const-string v1, "NOT_YET_CONNECTED"

    invoke-direct {v0, v1, v2}, Lorg/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a$a;->a:Lorg/a/a$a;

    new-instance v0, Lorg/a/a$a;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lorg/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a$a;->b:Lorg/a/a$a;

    new-instance v0, Lorg/a/a$a;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lorg/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a$a;->c:Lorg/a/a$a;

    new-instance v0, Lorg/a/a$a;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lorg/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a$a;->d:Lorg/a/a$a;

    new-instance v0, Lorg/a/a$a;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v6}, Lorg/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a$a;->e:Lorg/a/a$a;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/a/a$a;

    sget-object v1, Lorg/a/a$a;->a:Lorg/a/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/a/a$a;->b:Lorg/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/a/a$a;->c:Lorg/a/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/a/a$a;->d:Lorg/a/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lorg/a/a$a;->e:Lorg/a/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lorg/a/a$a;->f:[Lorg/a/a$a;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/a/a$a;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/a/a$a;

    return-object v0
.end method

.method public static values()[Lorg/a/a$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lorg/a/a$a;->f:[Lorg/a/a$a;

    invoke-virtual {v0}, [Lorg/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a$a;

    return-object v0
.end method
