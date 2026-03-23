.class public final enum Lcom/roblox/client/components/RbxProgressButton$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/components/RbxProgressButton$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/components/RbxProgressButton$a;

.field public static final enum b:Lcom/roblox/client/components/RbxProgressButton$a;

.field public static final enum c:Lcom/roblox/client/components/RbxProgressButton$a;

.field private static final synthetic d:[Lcom/roblox/client/components/RbxProgressButton$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/roblox/client/components/RbxProgressButton$a;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 49
    new-instance v0, Lcom/roblox/client/components/RbxProgressButton$a;

    const-string v1, "ANIMATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/components/RbxProgressButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 50
    new-instance v0, Lcom/roblox/client/components/RbxProgressButton$a;

    const-string v1, "PROGRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/components/RbxProgressButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/roblox/client/components/RbxProgressButton$a;

    .line 47
    sget-object v5, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->d:[Lcom/roblox/client/components/RbxProgressButton$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 1

    .line 47
    const-class v0, Lcom/roblox/client/components/RbxProgressButton$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/components/RbxProgressButton$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 1

    .line 47
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->d:[Lcom/roblox/client/components/RbxProgressButton$a;

    invoke-virtual {v0}, [Lcom/roblox/client/components/RbxProgressButton$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/components/RbxProgressButton$a;

    return-object v0
.end method
