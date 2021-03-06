// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static m0(author) => "作者-${author}";

  static m1(name, update_time, body) => "## ${name}\n#### 发布时间：${update_time}\n ${body}\n";

  static m2(version) => "当前版本：${version}";

  static m3(modes) => "${Intl.select(modes, {'followSystem': '跟随系统', 'brightness': '亮色', 'darkness': '夜间', 'other': '未知模式', })}";

  static m4(mode) => "当前设定：${mode}";

  static m5(channel) => "当前通道：${channel}";

  static m6(mode) => "${Intl.select(mode, {'release': '发行通道', 'beta': '开发通道', 'other': '未知通道', })}";

  static m7(title) => "最近更新：${title}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "AppName" : MessageLookupByLibrary.simpleMessage("大妈之家"),
    "AppNameUltimate" : MessageLookupByLibrary.simpleMessage("真·不撸埃斯Ultimate外拓大妈之家"),
    "AuthorPageTitle" : m0,
    "Cancel" : MessageLookupByLibrary.simpleMessage("取消"),
    "CannotOpenWeb" : MessageLookupByLibrary.simpleMessage("无法打开网页，请检测权限"),
    "CheckUpdateUpToDate" : MessageLookupByLibrary.simpleMessage("已经是最新版本了"),
    "Confirm" : MessageLookupByLibrary.simpleMessage("确认"),
    "DarkSide" : MessageLookupByLibrary.simpleMessage("黑暗面"),
    "DefaultAvatar" : MessageLookupByLibrary.simpleMessage("https://avatar.dmzj.com/default.png"),
    "Download" : MessageLookupByLibrary.simpleMessage("下载管理"),
    "DrawerEmail" : MessageLookupByLibrary.simpleMessage("大妈之家第三方APP"),
    "DrawerPlsLogin" : MessageLookupByLibrary.simpleMessage("请先登录"),
    "Favorite" : MessageLookupByLibrary.simpleMessage("我的订阅"),
    "History" : MessageLookupByLibrary.simpleMessage("历史记录"),
    "MainPageTabCategory" : MessageLookupByLibrary.simpleMessage("分类"),
    "MainPageTabHome" : MessageLookupByLibrary.simpleMessage("首页"),
    "MainPageTabLatest" : MessageLookupByLibrary.simpleMessage("最新"),
    "MainPageTabRanking" : MessageLookupByLibrary.simpleMessage("排行"),
    "Novel" : MessageLookupByLibrary.simpleMessage("轻小说"),
    "Setting" : MessageLookupByLibrary.simpleMessage("设置"),
    "SettingPageAboutDescription" : MessageLookupByLibrary.simpleMessage("基于flutter的第三方动漫之家简单app"),
    "SettingPageAboutSubtitle" : MessageLookupByLibrary.simpleMessage("想不到设置里面能塞啥"),
    "SettingPageAboutTitle" : MessageLookupByLibrary.simpleMessage("关于"),
    "SettingPageCancelDownloadTasksConfirmDescription" : MessageLookupByLibrary.simpleMessage("该操作将取消所有正在下载的进程，用于debug，是否确认？"),
    "SettingPageCancelDownloadTasksConfirmTitle" : MessageLookupByLibrary.simpleMessage("确认取消？"),
    "SettingPageCancelDownloadTasksSubtitle" : MessageLookupByLibrary.simpleMessage("该操作会取消所有下载进程，用于debug，危险操作"),
    "SettingPageCancelDownloadTasksTitle" : MessageLookupByLibrary.simpleMessage("取消所有下载进程"),
    "SettingPageChangeLogContent" : m1,
    "SettingPageChangeLogSubtitle" : MessageLookupByLibrary.simpleMessage("记录了所有版本的更新日志，方便查看每个版本的内容不同"),
    "SettingPageChangeLogTitle" : MessageLookupByLibrary.simpleMessage("更新日志"),
    "SettingPageCheckUpdateSubtitle" : m2,
    "SettingPageCheckUpdateTitle" : MessageLookupByLibrary.simpleMessage("检查更新"),
    "SettingPageDarkModeModes" : m3,
    "SettingPageDarkModeSubtitle" : m4,
    "SettingPageDarkModeTitle" : MessageLookupByLibrary.simpleMessage("夜间模式"),
    "SettingPageDatabaseDetailSubtitle" : MessageLookupByLibrary.simpleMessage("会直接暴露整个数据库内的数据长啥样，是个没啥用的debug功能，当然会出现包括你uid和token在内的各种信息，请不要随便乱贴"),
    "SettingPageDatabaseDetailTitle" : MessageLookupByLibrary.simpleMessage("查看数据库"),
    "SettingPageDisclaimerDetail1" : MessageLookupByLibrary.simpleMessage("1. 本程序为第三方APP，所有程序内容由动漫之家提供，本程序不保证内容安全性和可靠性。"),
    "SettingPageDisclaimerDetail2" : MessageLookupByLibrary.simpleMessage("2. 本程序的所有接口均为官方APP抓包获取，本程序承诺不受集任何内容交予任何第三方机构。"),
    "SettingPageDisclaimerDetail3" : MessageLookupByLibrary.simpleMessage("3. 本程序的登录功能并非官方登录功能，是抓取的官方接口实现，您使用本程序登录功能即代表您了解并愿意承担由于使用本程序登录造成的风险。"),
    "SettingPageDisclaimerSubtitle" : MessageLookupByLibrary.simpleMessage("不管有没有，先写了再说"),
    "SettingPageDisclaimerTitle" : MessageLookupByLibrary.simpleMessage("免责声明"),
    "SettingPageDownloadTaskListDetailTitle" : MessageLookupByLibrary.simpleMessage("下载进程列表"),
    "SettingPageDownloadTaskListOpenFailed" : MessageLookupByLibrary.simpleMessage("打开失败，请检查下载任务是否完成"),
    "SettingPageDownloadTaskListSubtitle" : MessageLookupByLibrary.simpleMessage("查看所有下载进程，用于debug"),
    "SettingPageDownloadTaskListTitle" : MessageLookupByLibrary.simpleMessage("查看所有下载数据"),
    "SettingPageFAQSubtitle" : MessageLookupByLibrary.simpleMessage("?"),
    "SettingPageFAQTitle" : MessageLookupByLibrary.simpleMessage("常见问题"),
    "SettingPageLabSettingSubtitle" : MessageLookupByLibrary.simpleMessage("恭喜你发现了彩蛋，这里是平时不会放在外面的彩蛋功能开关的地方"),
    "SettingPageLabSettingTitle" : MessageLookupByLibrary.simpleMessage("实验功能"),
    "SettingPageLogConsoleSubtitle" : MessageLookupByLibrary.simpleMessage("打开工作日志，会显示各种后台日志，但是当前有一定的兼容性问题"),
    "SettingPageLogConsoleTitle" : MessageLookupByLibrary.simpleMessage("打开日志控制台"),
    "SettingPageLogoutSubtitle" : MessageLookupByLibrary.simpleMessage("其实你点外面的退出一样的"),
    "SettingPageLogoutTitle" : MessageLookupByLibrary.simpleMessage("退出登录"),
    "SettingPageNoMediaSubtitle" : MessageLookupByLibrary.simpleMessage("将会在下载目录新建一个.nomedia的文件来影藏下载内容防止被媒体扫描"),
    "SettingPageNoMediaTitle" : MessageLookupByLibrary.simpleMessage("影藏下载内容"),
    "SettingPagePlaceholderSubtitle" : MessageLookupByLibrary.simpleMessage("想不到要拿来干啥，先占位"),
    "SettingPagePlaceholderTitle" : MessageLookupByLibrary.simpleMessage("占位符"),
    "SettingPageProjectURL" : MessageLookupByLibrary.simpleMessage("https://github.com/hanerx/flutter_dmzj"),
    "SettingPageProjectURLTitle" : MessageLookupByLibrary.simpleMessage("开源地址"),
    "SettingPageReadDirectionHorizontal" : MessageLookupByLibrary.simpleMessage("横向方向"),
    "SettingPageReadDirectionTitle" : MessageLookupByLibrary.simpleMessage("阅读方向"),
    "SettingPageReadDirectionVertical" : MessageLookupByLibrary.simpleMessage("垂直方向"),
    "SettingPageResetDatabaseConfirmDescription" : MessageLookupByLibrary.simpleMessage("该操作将会重置数据库中的所有内容且不可恢复，是否重置？"),
    "SettingPageResetDatabaseConfirmTitle" : MessageLookupByLibrary.simpleMessage("确认重置？"),
    "SettingPageResetDatabaseSubtitle" : MessageLookupByLibrary.simpleMessage("危险操作，包括登录信息，漫画记录均会被删除，仅用于出现bug后的补救功能(也许会造成更大的bug？)"),
    "SettingPageResetDatabaseTitle" : MessageLookupByLibrary.simpleMessage("清除数据库内容"),
    "SettingPageResetDioCacheConfirmDescription" : MessageLookupByLibrary.simpleMessage("该操作将会重置Dio的所有网络请求缓存，网络响应速度将会不同程度的下降，是否重置？"),
    "SettingPageResetDioCacheConfirmTitle" : MessageLookupByLibrary.simpleMessage("确认重置？"),
    "SettingPageResetDioCacheSubtitle" : MessageLookupByLibrary.simpleMessage("该操作将会把dio_http_cache的托管的缓存全部清除，危险操作"),
    "SettingPageResetDioCacheTitle" : MessageLookupByLibrary.simpleMessage("清除所有请求缓存"),
    "SettingPageSavePath" : MessageLookupByLibrary.simpleMessage("选择保存路径"),
    "SettingPageUpdateChannelSubtitle" : m5,
    "SettingPageUpdateChannelTitle" : MessageLookupByLibrary.simpleMessage("更新通道"),
    "SettingPageUpdateChannels" : m6,
    "SubscribeLatestUpdate" : m7,
    "TipsNew" : MessageLookupByLibrary.simpleMessage("new")
  };
}
