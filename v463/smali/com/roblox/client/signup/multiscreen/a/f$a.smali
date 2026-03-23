.class public final enum Lcom/roblox/client/signup/multiscreen/a/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/multiscreen/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/signup/multiscreen/a/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/signup/multiscreen/a/f$a;

.field public static final enum b:Lcom/roblox/client/signup/multiscreen/a/f$a;

.field public static final enum c:Lcom/roblox/client/signup/multiscreen/a/f$a;

.field public static final enum d:Lcom/roblox/client/signup/multiscreen/a/f$a;

.field public static final enum e:Lcom/roblox/client/signup/multiscreen/a/f$a;

.field public static final enum f:Lcom/roblox/client/signup/multiscreen/a/f$a;

.field private static final synthetic g:[Lcom/roblox/client/signup/multiscreen/a/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->a:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 7
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    const-string v1, "SET_PHONE_PREFIX"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/signup/multiscreen/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->b:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 8
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    const-string v1, "EMPTY_PHONE_NUMBER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/signup/multiscreen/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->c:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 9
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    const-string v1, "EMPTY_PREFIX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/signup/multiscreen/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->d:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 10
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    const-string v1, "UPDATE_PHONE_NUMBER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/signup/multiscreen/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->e:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 11
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    const-string v1, "INVALID_PHONE_NUMBER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/signup/multiscreen/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->f:Lcom/roblox/client/signup/multiscreen/a/f$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 5
    sget-object v8, Lcom/roblox/client/signup/multiscreen/a/f$a;->a:Lcom/roblox/client/signup/multiscreen/a/f$a;

    aput-object v8, v1, v2

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->b:Lcom/roblox/client/signup/multiscreen/a/f$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->c:Lcom/roblox/client/signup/multiscreen/a/f$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->d:Lcom/roblox/client/signup/multiscreen/a/f$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/f$a;->e:Lcom/roblox/client/signup/multiscreen/a/f$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/roblox/client/signup/multiscreen/a/f$a;->g:[Lcom/roblox/client/signup/multiscreen/a/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/a/f$a;
    .locals 1

    .line 5
    const-class v0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/signup/multiscreen/a/f$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/signup/multiscreen/a/f$a;
    .locals 1

    .line 5
    sget-object v0, Lcom/roblox/client/signup/multiscreen/a/f$a;->g:[Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-virtual {v0}, [Lcom/roblox/client/signup/multiscreen/a/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/signup/multiscreen/a/f$a;

    return-object v0
.end method
