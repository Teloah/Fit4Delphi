// Fit4Delphi Copyright (C) 2008. Sabre Inc.
// This program is free software; you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software Foundation;
// either version 2 of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with this program;
// if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
//
// Ported to Delphi by Michal Wojcik.
//
// Copyright (C) 2003,2004,2005 by Object Mentor, Inc. All rights reserved.
// Released under the terms of the GNU General Public License version 2 or later.
{$H+}
unit ColumnFixtureTestFixture;

interface

uses
  ColumnFixture;

type
{$METHODINFO ON}
  TColumnFixtureTestFixture = class(TColumnFixture)
  private
    FInput : integer;
  published
    property input : Integer read FInput write FInput;
    function output() : integer;
    function exception() : boolean;
  end;
{$METHODINFO OFF}

implementation

uses
  SysUtils,
  classes;

{ TColumnFixtureTestFixture }

function TColumnFixtureTestFixture.output() : integer;
begin
  result := input;
end;

function TColumnFixtureTestFixture.exception() : boolean;
begin
  raise SysUtils.Exception.Create('I thowed up');
end;

initialization
  RegisterClass(TColumnFixtureTestFixture);

finalization
  UnRegisterClass(TColumnFixtureTestFixture);

end.

