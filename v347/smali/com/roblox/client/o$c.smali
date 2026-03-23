.class public final enum Lcom/roblox/client/o$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/o$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/o$c;

.field public static final enum b:Lcom/roblox/client/o$c;

.field public static final enum c:Lcom/roblox/client/o$c;

.field public static final enum d:Lcom/roblox/client/o$c;

.field private static final synthetic e:[Lcom/roblox/client/o$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/roblox/client/o$c;

    const-string v1, "UnKnown"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    .line 22
    new-instance v0, Lcom/roblox/client/o$c;

    const-string v1, "Recommended"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/o$c;->b:Lcom/roblox/client/o$c;

    .line 23
    new-instance v0, Lcom/roblox/client/o$c;

    const-string v1, "Required"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    .line 24
    new-instance v0, Lcom/roblox/client/o$c;

    const-string v1, "NotRequired"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/o$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/o$c;->d:Lcom/roblox/client/o$c;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/roblox/client/o$c;

    sget-object v1, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/o$c;->b:Lcom/roblox/client/o$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/o$c;->d:Lcom/roblox/client/o$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/roblox/client/o$c;->e:[Lcom/roblox/client/o$c;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/o$c;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/roblox/client/o$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/o$c;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/o$c;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/roblox/client/o$c;->e:[Lcom/roblox/client/o$c;

    invoke-virtual {v0}, [Lcom/roblox/client/o$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/o$c;

    return-object v0
.end method
