.class public Lcom/roblox/client/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/f/b$a;,
        Lcom/roblox/client/f/b$b;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/client/f/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/roblox/client/f/b$a;

    invoke-direct {v0}, Lcom/roblox/client/f/b$a;-><init>()V

    sput-object v0, Lcom/roblox/client/f/b;->a:Lcom/roblox/client/f/b$b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/roblox/client/f/b;->a:Lcom/roblox/client/f/b$b;

    invoke-interface {v0, p0, p1}, Lcom/roblox/client/f/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
