.class public final enum Lcom/roblox/client/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/g;

.field public static final enum b:Lcom/roblox/client/g;

.field public static final enum c:Lcom/roblox/client/g;

.field public static final enum d:Lcom/roblox/client/g;

.field private static final synthetic f:[Lcom/roblox/client/g;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/roblox/client/g;

    const-string v1, "ERROR_APK_FILE_NOT_FOUND"

    const/4 v2, 0x0

    const-string v3, "apk_file_not_found"

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/g;->a:Lcom/roblox/client/g;

    .line 5
    new-instance v0, Lcom/roblox/client/g;

    const-string v1, "ERROR_APK_ZIP_FILE_CANT_OPEN"

    const/4 v3, 0x1

    const-string v4, "apk_file_cant_open"

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/g;->b:Lcom/roblox/client/g;

    .line 6
    new-instance v0, Lcom/roblox/client/g;

    const-string v1, "ERROR_COPYING_FILE_TO_CACHE"

    const/4 v4, 0x2

    const-string v5, "copying_file_to_cache"

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/g;->c:Lcom/roblox/client/g;

    .line 7
    new-instance v0, Lcom/roblox/client/g;

    const-string v1, "ERROR_SO_FILE_MISSING"

    const/4 v5, 0x3

    const-string v6, "so_file_missing"

    invoke-direct {v0, v1, v5, v6}, Lcom/roblox/client/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/g;->d:Lcom/roblox/client/g;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/roblox/client/g;

    .line 3
    sget-object v6, Lcom/roblox/client/g;->a:Lcom/roblox/client/g;

    aput-object v6, v1, v2

    sget-object v2, Lcom/roblox/client/g;->b:Lcom/roblox/client/g;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/g;->c:Lcom/roblox/client/g;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/roblox/client/g;->f:[Lcom/roblox/client/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/roblox/client/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/g;
    .locals 1

    .line 3
    const-class v0, Lcom/roblox/client/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/g;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/g;
    .locals 1

    .line 3
    sget-object v0, Lcom/roblox/client/g;->f:[Lcom/roblox/client/g;

    invoke-virtual {v0}, [Lcom/roblox/client/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/g;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/roblox/client/g;->e:Ljava/lang/String;

    return-object v0
.end method
