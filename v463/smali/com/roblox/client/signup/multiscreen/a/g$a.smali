.class public final enum Lcom/roblox/client/signup/multiscreen/a/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/multiscreen/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/signup/multiscreen/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum b:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum c:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum d:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum e:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum f:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum g:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum h:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum i:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum j:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum k:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field public static final enum l:Lcom/roblox/client/signup/multiscreen/a/g$a;

.field private static final synthetic m:[Lcom/roblox/client/signup/multiscreen/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 5
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 6
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "CAPTCHA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->b:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 7
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "UNEXPECTED_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->c:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 8
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "USERNAME_IN_USE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->d:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 9
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "USERNAME_INVALID_CHARS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->e:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 10
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "USERNAME_CONTAINS_SPACES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->f:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 11
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "USERNAME_INVALID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->g:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 12
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "PASSWORD_INVALID_REQUIREMENTS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->h:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 13
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "SERVER_ERROR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->i:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 14
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "PASSWORD_EQ_USERNAME"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->j:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 15
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "PASSWORD_TOO_SIMPLE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->k:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 16
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    const-string v1, "FLOOD_CHECKED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/roblox/client/signup/multiscreen/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->l:Lcom/roblox/client/signup/multiscreen/a/g$a;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 4
    sget-object v14, Lcom/roblox/client/signup/multiscreen/a/g$a;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v14, v1, v2

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->b:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->c:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->d:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->e:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->f:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->g:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v8

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->h:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v9

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->i:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v10

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->j:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v11

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->k:Lcom/roblox/client/signup/multiscreen/a/g$a;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->m:[Lcom/roblox/client/signup/multiscreen/a/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/a/g$a;
    .locals 1

    .line 4
    const-class v0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/signup/multiscreen/a/g$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/signup/multiscreen/a/g$a;
    .locals 1

    .line 4
    sget-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->m:[Lcom/roblox/client/signup/multiscreen/a/g$a;

    invoke-virtual {v0}, [Lcom/roblox/client/signup/multiscreen/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/signup/multiscreen/a/g$a;

    return-object v0
.end method
