.class public Lcom/roblox/client/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()V
    .locals 2

    .line 21
    sget-object v0, Lcom/roblox/client/z/b;->b:Ljava/lang/String;

    sget-object v1, Lcom/roblox/client/z/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/roblox/client/z/b;->b:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/roblox/client/z/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/roblox/client/z/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/roblox/client/z/b;->a:Ljava/lang/String;

    return-void
.end method
