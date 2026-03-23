.class public Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sImplementation:Lcom/roblox/engine/jni/locale/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/roblox/engine/jni/locale/a;

    invoke-direct {v0}, Lcom/roblox/engine/jni/locale/a;-><init>()V

    sput-object v0, Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;->sImplementation:Lcom/roblox/engine/jni/locale/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameLocale()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;->sImplementation:Lcom/roblox/engine/jni/locale/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/locale/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;->sImplementation:Lcom/roblox/engine/jni/locale/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/locale/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRobloxLocale()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;->sImplementation:Lcom/roblox/engine/jni/locale/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/locale/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Lcom/roblox/engine/jni/locale/a;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;->sImplementation:Lcom/roblox/engine/jni/locale/a;

    return-void
.end method
