.class final enum Lcom/roblox/client/b/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/b/a$a;

.field public static final enum b:Lcom/roblox/client/b/a$a;

.field public static final enum c:Lcom/roblox/client/b/a$a;

.field private static final synthetic d:[Lcom/roblox/client/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/roblox/client/b/a$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/a$a;->a:Lcom/roblox/client/b/a$a;

    .line 26
    new-instance v0, Lcom/roblox/client/b/a$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/a$a;->b:Lcom/roblox/client/b/a$a;

    .line 27
    new-instance v0, Lcom/roblox/client/b/a$a;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/a$a;->c:Lcom/roblox/client/b/a$a;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/roblox/client/b/a$a;

    sget-object v1, Lcom/roblox/client/b/a$a;->a:Lcom/roblox/client/b/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/b/a$a;->b:Lcom/roblox/client/b/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/b/a$a;->c:Lcom/roblox/client/b/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/roblox/client/b/a$a;->d:[Lcom/roblox/client/b/a$a;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/b/a$a;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/roblox/client/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/b/a$a;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/b/a$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/roblox/client/b/a$a;->d:[Lcom/roblox/client/b/a$a;

    invoke-virtual {v0}, [Lcom/roblox/client/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/b/a$a;

    return-object v0
.end method
